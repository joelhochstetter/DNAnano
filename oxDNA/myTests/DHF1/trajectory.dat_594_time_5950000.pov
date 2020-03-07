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
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
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
	<2.510075, 0.370291, 1.964711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.354210, 0.296157, 2.325558>,  <2.260691, 0.251677, 2.542066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.354210, 0.296157, 2.325558>,  <2.510075, 0.370291, 1.964711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.354210, 0.296157, 2.325558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541085, 0.746580, 0.387099,
		-0.745245, 0.638960, -0.190633,
		-0.389663, -0.185334, 0.902116,
		2.237311, 0.240557, 2.596193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.347621, 1.042747, 2.101655>,  <2.510075, 0.370291, 1.964711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.347621, 1.042747, 2.101655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.363632, 0.784422, 2.406633>,  <2.373239, 0.629427, 2.589620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.363632, 0.784422, 2.406633>,  <2.347621, 1.042747, 2.101655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.363632, 0.784422, 2.406633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490241, 0.677595, 0.548205,
		-0.870667, 0.351839, 0.343726,
		0.040027, -0.645813, 0.762446,
		2.375640, 0.590679, 2.635367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.199224, 1.404300, 2.834859>,  <2.347621, 1.042747, 2.101655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.199224, 1.404300, 2.834859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.398144, 1.063336, 2.899465>,  <2.517496, 0.858757, 2.938228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.398144, 1.063336, 2.899465>,  <2.199224, 1.404300, 2.834859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.398144, 1.063336, 2.899465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458175, 0.416125, 0.785440,
		-0.736728, -0.316599, 0.597492,
		0.497301, -0.852412, 0.161513,
		2.547334, 0.807612, 2.947918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.103274, 1.195592, 3.541373>,  <2.199224, 1.404300, 2.834859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.103274, 1.195592, 3.541373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.461197, 1.094609, 3.394085>,  <2.675951, 1.034019, 3.305712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.461197, 1.094609, 3.394085>,  <2.103274, 1.195592, 3.541373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.461197, 1.094609, 3.394085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439448, 0.352506, 0.826211,
		-0.078784, -0.901113, 0.426367,
		0.894807, -0.252458, -0.368220,
		2.729639, 1.018871, 3.283619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.525761, 1.059047, 4.065969>,  <2.103274, 1.195592, 3.541373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.525761, 1.059047, 4.065969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.785748, 1.130190, 3.770426>,  <2.941740, 1.172875, 3.593100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.785748, 1.130190, 3.770426>,  <2.525761, 1.059047, 4.065969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.785748, 1.130190, 3.770426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622146, 0.433815, 0.651720,
		0.436440, -0.883274, 0.171313,
		0.649965, 0.177855, -0.738859,
		2.980738, 1.183547, 3.548769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.218368, 1.051136, 4.469782>,  <2.525761, 1.059047, 4.065969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.218368, 1.051136, 4.469782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.253838, 1.243227, 4.120723>,  <3.275120, 1.358482, 3.911287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.253838, 1.243227, 4.120723>,  <3.218368, 1.051136, 4.469782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.253838, 1.243227, 4.120723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577053, 0.689332, 0.437985,
		0.811878, -0.542403, -0.215991,
		0.088675, 0.480229, -0.872649,
		3.280440, 1.387296, 3.858928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.916233, 1.321048, 4.423429>,  <3.218368, 1.051136, 4.469782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.916233, 1.321048, 4.423429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.716335, 1.554829, 4.167719>,  <3.596396, 1.695097, 4.014293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.716335, 1.554829, 4.167719>,  <3.916233, 1.321048, 4.423429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.716335, 1.554829, 4.167719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443156, 0.806656, 0.391047,
		0.744222, -0.087875, -0.662126,
		-0.499745, 0.584451, -0.639274,
		3.566412, 1.730164, 3.975937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.411096, 1.758159, 4.038328>,  <3.916233, 1.321048, 4.423429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.411096, 1.758159, 4.038328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.058891, 1.945923, 4.011933>,  <3.847569, 2.058581, 3.996097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.058891, 1.945923, 4.011933>,  <4.411096, 1.758159, 4.038328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.058891, 1.945923, 4.011933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435917, 0.856525, 0.276300,
		0.186217, 0.214521, -0.958803,
		-0.880511, 0.469410, -0.065986,
		3.794738, 2.086746, 3.992137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.047711, 2.671166, 5.308257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.851677, 2.928312, 5.072786>,  <3.734056, 3.082600, 4.931504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.851677, 2.928312, 5.072786>,  <4.047711, 2.671166, 5.308257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.851677, 2.928312, 5.072786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128845, -0.721347, -0.680484,
		-0.862100, -0.257647, 0.436351,
		-0.490085, 0.642866, -0.588676,
		3.704651, 3.121172, 4.896183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.285200, 2.488564, 5.238780>,  <4.047711, 2.671166, 5.308257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.285200, 2.488564, 5.238780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.432938, 2.675981, 4.917768>,  <3.521580, 2.788430, 4.725161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.432938, 2.675981, 4.917768>,  <3.285200, 2.488564, 5.238780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.432938, 2.675981, 4.917768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327804, -0.742392, -0.584293,
		-0.869557, 0.478878, -0.120609,
		0.369345, 0.468540, -0.802530,
		3.543741, 2.816543, 4.677010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.846454, 2.591562, 4.610508>,  <3.285200, 2.488564, 5.238780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.846454, 2.591562, 4.610508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.194191, 2.609109, 4.413605>,  <3.402833, 2.619637, 4.295463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.194191, 2.609109, 4.413605>,  <2.846454, 2.591562, 4.610508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.194191, 2.609109, 4.413605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360233, -0.625665, -0.691936,
		-0.338342, 0.778858, -0.528115,
		0.869342, 0.043867, -0.492259,
		3.454994, 2.622269, 4.265927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.690829, 2.668298, 3.789257>,  <2.846454, 2.591562, 4.610508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.690829, 2.668298, 3.789257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.050774, 2.505044, 3.850803>,  <3.266740, 2.407091, 3.887731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.050774, 2.505044, 3.850803>,  <2.690829, 2.668298, 3.789257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.050774, 2.505044, 3.850803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196227, -0.693853, -0.692866,
		0.389544, 0.593291, -0.704458,
		0.899861, -0.408135, 0.153867,
		3.320732, 2.382603, 3.896963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.049453, 2.586619, 3.131023>,  <2.690829, 2.668298, 3.789257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.049453, 2.586619, 3.131023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.207314, 2.311681, 3.374928>,  <3.302030, 2.146718, 3.521270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.207314, 2.311681, 3.374928>,  <3.049453, 2.586619, 3.131023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.207314, 2.311681, 3.374928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256651, -0.719675, -0.645134,
		0.882259, 0.098106, -0.460428,
		0.394650, -0.687345, 0.609761,
		3.325709, 2.105477, 3.557856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.432925, 2.066396, 2.756008>,  <3.049453, 2.586619, 3.131023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.432925, 2.066396, 2.756008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.363632, 1.864138, 3.094076>,  <3.322057, 1.742783, 3.296917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.363632, 1.864138, 3.094076>,  <3.432925, 2.066396, 2.756008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.363632, 1.864138, 3.094076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170235, -0.829856, -0.531375,
		0.970057, -0.235928, 0.057679,
		-0.173231, -0.505645, 0.845171,
		3.311663, 1.712444, 3.347627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.868618, 1.388710, 2.651019>,  <3.432925, 2.066396, 2.756008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.868618, 1.388710, 2.651019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.597351, 1.341871, 2.941227>,  <3.434591, 1.313768, 3.115352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.597351, 1.341871, 2.941227>,  <3.868618, 1.388710, 2.651019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.597351, 1.341871, 2.941227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209247, -0.915596, -0.343364,
		0.704490, -0.384671, 0.596425,
		-0.678167, -0.117096, 0.725520,
		3.393901, 1.306743, 3.158883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.002376, 0.763018, 2.840312>,  <3.868618, 1.388710, 2.651019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.002376, 0.763018, 2.840312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.625870, 0.860842, 2.933443>,  <3.399966, 0.919536, 2.989322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.625870, 0.860842, 2.933443>,  <4.002376, 0.763018, 2.840312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.625870, 0.860842, 2.933443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323673, -0.849912, -0.415795,
		0.096198, -0.466734, 0.879150,
		-0.941266, 0.244558, 0.232829,
		3.343490, 0.934209, 3.003292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
