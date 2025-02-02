module bessels_constants
    use iso_fortran_env
    implicit none
    public

    integer, parameter :: BK    = real64
    integer, parameter :: BSIZE = int32

    real(BK), parameter :: ZERO     = 0.00_BK
    real(BK), parameter :: ONE      = 1.00_BK
    real(BK), parameter :: TWO      = 2.00_BK
    real(BK), parameter :: FOUR     = 4.00_BK
    real(BK), parameter :: HALF     = 0.50_BK
    real(BK), parameter :: FOURTH   = 0.25_BK
    real(BK), parameter :: TWOTHD   = 2.0_BK/3.0_BK
    real(BK), parameter :: THIRD    = 1.0_BK/3.0_BK
    real(BK), parameter :: SIXTH    = 1.0_BK/6.0_BK


    real(BK), parameter :: PI       = acos(-1.0_BK)
    real(BK), parameter :: ONEOSQPI = ONE/SQRT(PI)
    real(BK), parameter :: TWOOPI   = TWO/PI
    real(BK), parameter :: PIO2     = PI*HALF
    real(BK), parameter :: PIO4     = PI*FOURTH
    real(BK), parameter :: SQPIO2   = 1.253314137315500251207882642405522626503493370304969158314961788171146827303924_BK
    real(BK), parameter :: SQ1O2PI  = 0.3989422804014326779399460599343818684758586311649346576659258296706579258993008_BK
    real(BK), parameter :: SQ2OPI   = 0.7978845608028653558798921198687637369517172623298693153318516593413158517986017_BK
    real(BK), parameter :: SQ2O2    = 0.707106781186547524400844362104849039284835937688474036588339868995366239231051_BK

    real(BK), parameter :: THPIO4   = 2.35619449019234492885_BK
    real(BK), parameter :: SQ2PI    = 2.5066282746310007_BK


    real(BK), parameter :: GAMMA_TWO_THIRDS  = gamma(TWOTHD)
    real(BK), parameter :: GAMMA_ONE_THIRD   = gamma(THIRD)
    real(BK), parameter :: GAMMA_ONE_SIXTH   = gamma(SIXTH)
    real(BK), parameter :: GAMMA_FIVE_SIXTHS = gamma(5.0_BK*SIXTH)

    real(BK), parameter :: J0_ROOTS(2,16) = reshape([   2.4048255576957730_BK, -1.1766916515308940e-16_BK, &
                                                        3.8317059702075125_BK, -1.5269184090088067e-16_BK, &
                                                        5.5200781102863110_BK, +8.0885971461467220e-17_BK, &
                                                        7.0155866698156190_BK, -9.4141656534103890e-17_BK, &
                                                        8.6537279129110130_BK, -2.9281260732077900e-16_BK, &
                                                        10.173468135062722_BK, +4.4821622747688880e-16_BK, &
                                                        11.791534439014281_BK, +2.8129569127787350e-16_BK, &
                                                        13.323691936314223_BK, +2.6004080647188130e-16_BK, &
                                                        14.930917708487787_BK, -7.0705145059830740e-16_BK, &
                                                        16.470630050877634_BK, -1.6190195447981280e-15_BK, &
                                                        18.071063967910924_BK, -9.6580480894262090e-16_BK, &
                                                        19.615858510468243_BK, -1.0044456345266160e-15_BK, &
                                                        21.211636629879260_BK, +4.9470774287840680e-16_BK, &
                                                        22.760084380592772_BK, -4.9257493736149220e-16_BK, &
                                                        24.352471530749302_BK, +9.1690671339510660e-16_BK, &
                                                        25.903672087618382_BK, +4.8945307264198250e-16_BK], [2,16])

    real(BK), parameter :: J1_ROOTS(2,16) = reshape([   1.8411837813406593_BK, +4.7898393919093694e-18_BK, &
                                                        3.8317059702075125_BK, -1.5269184090088067e-16_BK, &
                                                        5.3314427735250325_BK, +1.5109105349471405e-16_BK, &
                                                        7.0155866698156190_BK, -9.4141656534103890e-17_BK, &
                                                        8.5363163663462860_BK, -1.5433871213307537e-16_BK, &
                                                        10.173468135062722_BK, +4.4821622747688880e-16_BK, &
                                                        11.706004902592063_BK, +7.1213669422982460e-16_BK, &
                                                        13.323691936314223_BK, +2.6004080647188130e-16_BK, &
                                                        14.863588633909034_BK, -6.2657889887818790e-16_BK, &
                                                        16.470630050877634_BK, -1.6190195447981280e-15_BK, &
                                                        18.015527862681804_BK, -1.1196999448424267e-16_BK, &
                                                        19.615858510468243_BK, -1.0044456345266160e-15_BK, &
                                                        21.164369859188790_BK, +1.7024131380423588e-15_BK, &
                                                        22.760084380592772_BK, -4.9257493736149220e-16_BK, &
                                                        24.311326857210776_BK, -2.6147985585371720e-16_BK, &
                                                        25.903672087618382_BK, +4.8945307264198250e-16_BK], [2,16])

    real(BK), parameter :: J0_POLY_PIO2(*) =    [ +1.00000000000000000000_BK &
                                                , -0.25000000000000000000_BK &
                                                , +0.01562499999999994000_BK &
                                                , -0.00043402777777725544_BK &
                                                , +6.781684026082576000000e-6_BK &
                                                , -6.781683757550061e-8_BK &
                                                , 4.709479394601058e-10_BK &
                                                , -2.4016837144506874e-12_BK &
                                                , 9.104258208703104e-15_BK &
                                                ]

    real(BK), parameter :: J1_POLY_PIO2(*) =    [ 0.5_BK &
                                                , -0.0624999999999989_BK &
                                                , 0.002604166666657291_BK &
                                                , -5.42534721917933e-5_BK &
                                                , 6.781683542660179e-7_BK &
                                                , -5.651361336587487e-9_BK &
                                                , 3.36191211106159e-11_BK &
                                                , -1.4511302591871352e-13_BK &
                                                ]

    real(BK), parameter :: J0_POLYS(14,16) = reshape([ &
          0.0000000000000000000_BK, -0.5191474972894669_BK, 0.10793870175491979_BK, 0.05660177443794914_BK, -0.008657669593292222_BK, -0.0021942003590739974_BK, 0.0002643770365942964_BK, 4.37291931443113e-5_BK, -4.338825419759815e-6_BK, -5.304927679598406e-7_BK, 4.469819175606667e-8_BK, 4.3284827345621115e-9_BK, -3.135111000732148e-10_BK, -2.628876489517534e-11_BK, &
          -0.402759395702553_BK, 2.476919088072758e-16_BK, 0.20137969785127532_BK, -0.017518715285670765_BK, -0.013352611033152278_BK, 0.0010359438492839443_BK, 0.00037218755624680334_BK, -2.4952042421113972e-5_BK, -5.776086353844158e-6_BK, 3.374317129436161e-7_BK, 5.727482259215452e-8_BK, -2.9561880489355444e-9_BK, -3.905845672635605e-10_BK, 1.971332566705736e-11_BK, &
          0.000000000000000000_BK, 0.34026480655836816_BK, -0.030820651425593214_BK, -0.05298855286760721_BK, 0.004631042145890388_BK, 0.002257440229081131_BK, -0.00017518572879518415_BK, -4.6521091062878115e-5_BK, 3.199785909661533e-6_BK, 5.716500268232186e-7_BK, -3.5112898510841466e-8_BK, -4.684643389757727e-9_BK, 2.562685034682206e-10_BK, 2.7958958795750104e-11_BK, &
          0.30011575252613254_BK, -1.6640272822046001e-16_BK, -0.15005787626306408_BK, 0.007129737603121546_BK, 0.011742619737383848_BK, -0.0006260583453094324_BK, -0.00035093119008693753_BK, 1.7929701912295164e-5_BK, 5.6239324892485754e-6_BK, -2.668437501970219e-7_BK, -5.6648488273749086e-8_BK, 2.48117399780498e-9_BK, 3.8876537586241154e-10_BK, -1.6657136713437192e-11_BK, &
          0.000000000000000000_BK, -0.27145229992838193_BK, 0.015684124960953488_BK, 0.044033774963413_BK, -0.0025093022271948434_BK, -0.0020603351551475315_BK, 0.00011243486771159352_BK, 4.482303558813413e-5_BK, -2.288390108003442e-6_BK, -5.679383588459768e-7_BK, 2.693939234375692e-8_BK, 4.737285529934781e-9_BK, -2.0612709555352797e-10_BK, -2.8163166483726606e-11_BK, &
          -0.2497048770578432_BK, 1.1807897766765572e-16_BK, 0.12485243852891914_BK, -0.0040907858517059345_BK, -0.010102792347641438_BK, 0.00038536375952213334_BK, 0.00031859711440332953_BK, -1.2373899600646271e-5_BK, -5.3013932979548665e-6_BK, 2.001098153528186e-7_BK, 5.4711629662471434e-8_BK, -1.9724572531751518e-9_BK, -3.8121398193699247e-10_BK, 1.3667679743782715e-11_BK, &
          0.000000000000000000_BK, 0.23245983136472478_BK, -0.009857064513825458_BK, -0.03818600911162367_BK, 0.0016073972920762946_BK, 0.0018420433388794816_BK, -7.581358465623415e-5_BK, -4.159284549011371e-5_BK, 1.650645590334915e-6_BK, 5.425453494592871e-7_BK, -2.0556207467977526e-8_BK, -4.620018928884712e-9_BK, 1.642028058414746e-10_BK, 2.7701605444102412e-11_BK, &
          0.21835940724787295_BK, -8.89726402965429e-17_BK, -0.10917970362393398_BK, 0.0027314677279632535_BK, 0.008944552393700088_BK, -0.00026391472261453583_BK, -0.00028847875053074687_BK, 8.858193371737123e-6_BK, 4.9233776180403375e-6_BK, -1.5077786827161215e-7_BK, -5.190218733666561e-8_BK, 1.5539413886301204e-9_BK, 3.674809363354973e-10_BK, -1.1113645791216594e-11_BK, &
          0.00000000000000000_BK, -0.20654643307799603_BK, 0.006916736034268416_BK, 0.034115572697347704_BK, -0.001137276252948717_BK, -0.0016680057255530109_BK, 5.4841792064182565e-5_BK, 3.837965853474541e-5_BK, -1.2335804050962046e-6_BK, -5.106259295634553e-7_BK, 1.592333632709497e-8_BK, 4.423517565793139e-9_BK, -1.3138837384184105e-10_BK, -2.6809397212536384e-11_BK, &
          -0.19646537146865717_BK, 6.979167865106427e-17_BK, 0.09823268573432613_BK, -0.001988037402152532_BK, -0.008095530671166083_BK, 0.00019440675128712672_BK, 0.0002640383898036336_BK, -6.666777683303928e-6_BK, -4.5715696772304925e-6_BK, 1.1666296153560847e-7_BK, 4.8913639696764225e-8_BK, -1.2379867207945651e-9_BK, -3.508930968415813e-10_BK, 9.07632091591013e-12_BK, &
          0.00000000000000000_BK, 0.18772880304043943_BK, -0.005194182350684612_BK, -0.031096513233785917_BK, 0.0008577442641273341_BK, 0.0015312251534677639_BK, -4.184307585284775e-5_BK, -3.5603170534217916e-5_BK, 9.58002109234601e-7_BK, 4.795250964600283e-7_BK, -1.263434500625308e-8_BK, -4.20550167685701e-9_BK, 1.065791122326672e-10_BK, 2.5727417675684577e-11_BK, &
          0.18006337534431555_BK, -5.638484737644332e-17_BK, -0.09003168767215539_BK, 0.0015299132863046024_BK, 0.0074441453680234426_BK, -0.00015060569680378768_BK, -0.0002443398416353605_BK, 5.227001519013193e-6_BK, 4.267152607972633e-6_BK, -9.295966007495808e-8_BK, -4.610438011417262e-8_BK, 1.0049092632275165e-9_BK, 3.339442682325105e-10_BK, -7.4991079301099e-12_BK, &
          0.00000000000000000_BK, -0.17326589422922986_BK, 0.004084217951979124_BK, 0.028749284970146657_BK, -0.0006761643016121907_BK, -0.0014215899173758441_BK, 3.320978125391802e-5_BK, 3.3264379323815026e-5_BK, -7.684444100376941e-7_BK, -4.515479818833484e-7_BK, 1.0271599456634145e-8_BK, 3.993903280527723e-9_BK, -8.793975528824604e-11_BK, -2.4610374225652004e-11_BK, &
          -0.16718460047381803_BK, 4.662597138876655e-17_BK, 0.08359230023690671_BK, -0.0012242529339116864_BK, -0.006925682915280748_BK, 0.00012100729852042988_BK, 0.00022821854128498174_BK, -4.230799709959437e-6_BK, -4.007618360337058e-6_BK, 7.601217108010105e-8_BK, 4.358483157250522e-8_BK, -8.317621452517008e-10_BK, -3.178805429572483e-10_BK, 6.284538399593043e-12_BK, &
          0.000000000000000000_BK, 0.16170155068925002_BK, -0.0033200234006036146_BK, -0.02685937038656159_BK, 0.0005505380905909195_BK, 0.0013316994659124243_BK, -2.715683205388875e-5_BK, -3.1289544794362e-5_BK, 6.326900360777323e-7_BK, 4.2697141781883964e-7_BK, -8.532447325590315e-9_BK, -3.799009445641295e-9_BK, 7.379552811590934e-11_BK, 2.353654960834717e-11_BK, &
          0.15672498625285222_BK, 1.1464880342445208e-19_BK, -0.07836249312642612_BK, 0.0010083833270351796_BK, 0.006501011610557426_BK, -9.993664895655577e-5_BK, -0.00021478298462967253_BK, 3.511086890959515e-6_BK, 3.7857022791122945e-6_BK, -6.350944888510364e-8_BK, -4.135588012575766e-8_BK, 7.135988717747828e-10_BK, 3.2075281131621564e-10_BK, 2.208506585533542e-12_BK],&
          [14,16])

    real(BK), parameter :: J1_POLYS(14,16) = reshape([ &
          0.5818652242815964_BK, 8.973834293036876e-17_BK, -0.20511071214777496_BK, 0.006058948324597746_BK, 0.013801769808047723_BK, -0.0003723170971916689_BK, -0.0003949590750416506_BK, 9.202953658715798e-6_BK, 6.267292697927347e-6_BK, -1.2681571675674473e-7_BK, -6.319326736018798e-8_BK, 1.057852721352679e-9_BK, 4.839653511789343e-10_BK, -2.1534683937074676e-11_BK, &
          0.0_BK, -0.402759395702553_BK, 0.05255614585697725_BK, 0.053410444132722765_BK, -0.005179719245639115_BK, -0.00223312533910116_BK, 0.00017466429071755533_BK, 4.6208700909637e-5_BK, -3.0368632747366735e-6_BK, -5.727790851165856e-7_BK, 3.248220586398651e-8_BK, 4.732693354840469e-9_BK, -2.346792988667587e-10_BK, -2.607612190048509e-11_BK, &
          -0.34612620185379156_BK, 2.6002760076991505e-17_BK, 0.16697453550109428_BK, -0.009678268542879972_BK, -0.012099225779175138_BK, 0.0006654009006841076_BK, 0.0003541389011182841_BK, -1.742720356958137e-5_BK, -5.655294960447268e-6_BK, 2.484316221112215e-7_BK, 5.7101369594782676e-8_BK, -2.2587104440771904e-9_BK, -3.9854619701676605e-10_BK, 1.854508641982197e-11_BK, &
          0.0_BK, 0.30011575252613254_BK, -0.02138921280934146_BK, -0.04697047894974007_BK, 0.0031302917260424344_BK, 0.0021055871432169443_BK, -0.00012550790947431806_BK, -4.499147505171648e-5_BK, 2.401580334889493e-6_BK, 5.665260872870135e-7_BK, -2.7272058756924113e-8_BK, -4.718921752439826e-9_BK, 2.045523137027535e-10_BK, 2.6923755198436e-11_BK, &
          0.27329994163319987_BK, -1.3511933704624036e-16_BK, -0.13477468037992396_BK, 0.005116340346495344_BK, 0.010631861751990702_BK, -0.000448743683849691_BK, -0.0003268000185531749_BK, 1.3382556752353113e-5_BK, 5.363177082527157e-6_BK, -2.0647461181851255e-7_BK, -5.499892476485602e-8_BK, 1.9780335410646812e-9_BK, 3.8456897851545063e-10_BK, -1.5543946040865833e-11_BK, &
          0.0_BK, -0.2497048770578432_BK, 0.012272357555101388_BK, 0.04041116939079181_BK, -0.0019268187972545589_BK, -0.0019115826893618788_BK, 8.661729445925766e-5_BK, 4.241116264477775e-5_BK, -1.800978985430059e-6_BK, -5.47159694982648e-7_BK, 2.1682608288127194e-8_BK, 4.629875997238198e-9_BK, -1.6946465290961774e-10_BK, -2.7001263147077087e-11_BK, &
          -0.23330441717143408_BK, 1.3347222236161232e-16_BK, 0.11580092244607755_BK, -0.0032489977328297747_BK, -0.009372527206041913_BK, 0.0003036138212749204_BK, 0.00029804555521007126_BK, -9.813819271763006e-6_BK, -5.0242293237237345e-6_BK, 1.6136482548346424e-7_BK, 5.251755806094281e-8_BK, -1.6213723779041528e-9_BK, -3.7130918416720704e-10_BK, 1.2840797195120732e-11_BK, &
          0.0_BK, 0.21835940724787295_BK, -0.008194403183877394_BK, -0.03577820957502993_BK, 0.001319573612804675_BK, 0.0017308725061602815_BK, -6.200735153951766e-5_BK, -3.938703730297954e-5_BK, 1.3569938030086903e-6_BK, 5.190652330962483e-7_BK, -1.7082573736581586e-8_BK, -4.464580500726025e-9_BK, 1.3835552663370753e-10_BK, 2.6508049073606443e-11_BK, &
          0.20701265272531905_BK, -1.1572365385200866e-16_BK, -0.10303781563402706_BK, 0.002289729546293356_BK, 0.008432435058846974_BK, -0.00021965941971569214_BK, -0.000272721543802475_BK, 7.36909520166486e-6_BK, 4.682127415369e-6_BK, -1.2611406291992532e-7_BK, -4.9733737497256667e-8_BK, 1.313333637862963e-9_BK, 3.5584811981981077e-10_BK, -1.0581432980865016e-11_BK, &
          0.0_BK, -0.19646537146865717_BK, 0.005964112206447895_BK, 0.032382122684890324_BK, -0.0009720337562254532_BK, -0.0015842303417456071_BK, 4.6667442166602986e-5_BK, 3.6572573450276185e-5_BK, -1.0499611641790313e-6_BK, -4.891787571238003e-7_BK, 1.3609422867092438e-8_BK, 4.2640592578446675e-9_BK, -1.1321195999108497e-10_BK, -2.5685037344174917e-11_BK, &
          -0.18801748852581776_BK, 9.806595982257605e-17_BK, 0.09371909377243136_BK, -0.0017233243363111925_BK, -0.007714266760106843_BK, 0.00016755862384546863_BK, 0.000251827174474777_BK, -5.7335177376628445e-6_BK, -4.372425030172481e-6_BK, 1.0045839852031556e-7_BK, 4.698184959516747e-8_BK, -1.0717704296017814e-9_BK, -3.3952344362582674e-10_BK, 8.773851724781324e-12_BK, &
          0.0_BK, 0.18006337534431555_BK, -0.004589739858905968_BK, -0.029776581472313136_BK, 0.0007530284838491313_BK, 0.0014660390526475475_BK, -3.658900932751018e-5_BK, -3.4137236390211275e-5_BK, 8.366325091910564e-7_BK, 4.6108475352995054e-7_BK, -1.1047200388967438e-8_BK, -4.058793425595929e-9_BK, 9.363513647344476e-11_BK, 2.4720051360744732e-11_BK, &
          0.1734590492857464_BK, -8.319859584484218e-17_BK, -0.08653590193876039_BK, 0.0013568189856187354_BK, 0.007147216520714834_BK, -0.00013295776598760658_BK, -0.00023462959289705953_BK, 4.6031437800947915e-6_BK, 4.103196271673978e-6_BK, -8.18373301294018e-8_BK, -4.44403211204062e-8_BK, 8.872617322304839e-10_BK, 3.2359730989751983e-10_BK, -7.354373969368619e-12_BK, &
          0.0_BK, -0.16718460047381806_BK, 0.0036727588017285762_BK, 0.02770273166133465_BK, -0.0006050364924617241_BK, -0.0013693112504440895_BK, 2.9615596890234806e-5_BK, 3.206096184277923e-5_BK, -6.841058767433935e-7_BK, -4.358877331737043e-7_BK, 9.143763763164119e-9_BK, 3.864037532317281e-9_BK, -7.851667555762691e-11_BK, -2.3728757802646805e-11_BK, &
          -0.1618382095526585_BK, 7.115722920799028e-17_BK, 0.08078219522574913_BK, -0.0011038527651152986_BK, -0.006686444726790514_BK, 0.00010870535083026479_BK, 0.00022030197347228358_BK, -3.791805814546456e-6_BK, -3.871147931227952e-6_BK, 6.80607764766372e-8_BK, 4.2160129307780366e-8_BK, -7.460427055677985e-10_BK, -3.0872139357605097e-10_BK, 6.24158293622982e-12_BK, &
          0.0_BK, 0.15672498625285222_BK, -0.0030251499811055965_BK, -0.026004046442225856_BK, 0.0004996832448037306_BK, 0.001288697907658241_BK, -2.457760943647847e-5_BK, -3.02856199504406e-5_BK, 5.715983781675481e-7_BK, 4.136275513873783e-7_BK, -7.703846567878601e-9_BK, -3.6853569596797437e-9_BK, 6.676439988396374e-11_BK, 2.277101500922319e-11_BK],&
          [14,16])


    contains

    ! Calculation of besselj0 is done in three branches using polynomial approximations
    !
    ! Branch 1: x <= pi/2
    !           besselj0 is calculated using a 9 term, even minimax polynomial
    !
    ! Branch 2: pi/2 < x < 26.0
    !           besselj0 is calculated by one of 16 different degree 13 minimax polynomials
    !           Each polynomial is an expansion around either a root or extrema of the besselj0.
    !           This ensures accuracy near the roots. Method taken from [2]
    !
    ! Branch 3: x >= 26.0
    !           besselj0 = sqrt(2/(pi*x))*beta(x)*(cos(x - pi/4 - alpha(x))
    !           See modified expansions given in [2]. Exact coefficients are used.

    elemental real(BK) function besselj0(x)
       real(BK), intent(in) :: x

       real(BK) :: ax,xinv,x2,xn,p,q,a,b,r
       intrinsic :: sqrt
       integer :: n

       real(BK), parameter :: ppoly(*) = [ONE, -1.0_BK/16.0_BK, 53.0_BK/512.0_BK, -4447.0_BK/8192.0_BK, 3066403.0_BK/524288.0_BK, &
                                          -896631415.0_BK/8388608.0_BK, 796754802993.0_BK/268435456.0_BK, &
                                          -500528959023471.0_BK/4294967296.0_BK]
       real(BK), parameter :: qpoly(*) = [-1.0_BK/8.0_BK, 25.0_BK/384.0_BK, -1073.0_BK/5120.0_BK, 375733.0_BK/229376.0_BK, &
                                          -55384775.0_BK/2359296.0_BK, 24713030909.0_BK/46137344.0_BK, &
                                          -7780757249041.0_BK/436207616.0_BK]

       ax = abs(x)

       if (ax <= PIO2) then

          besselj0 = evalpoly(size(J0_POLY_PIO2), ax**2, J0_POLY_PIO2)

       elseif (ax < 26.0_BK) then

           n        = int(TWOOPI*ax) ! 1 < n < 16
           r        = ax - sum(J0_ROOTS(:,n))
           besselj0 = evalpoly(size(J0_POLYS,1), r, J0_POLYS(:,n))

       elseif (ax<huge(ax)) then

           xinv = ONE/ax
           x2   = xinv**2

           ! Cut to 5-th order when we know we'll have enough accuracy
           if (ax < 120.0_BK) then

               p = evalpoly(size(ppoly), x2, ppoly)
               q = evalpoly(size(qpoly), x2, qpoly)

           else
               p = evalpoly(4, x2, ppoly(1:4))
               q = evalpoly(4, x2, qpoly(1:4))

           endif

           a  = SQ2OPI * sqrt(xinv) * p
           xn = muladd(xinv, q, -PIO4)

           ! the following computes b = cos(x + xn) more accurately see src/misc.jl
           ! b = cos_sum(x, xn)
           b = cos(ax+xn)

           besselj0 = a*b

       else

           besselj0 = ZERO

       end if

    end function besselj0


      ! cubic root function in double precision
      elemental real(BK) function cbrt(x)
         real(BK),   intent(in) :: x
         real(BK), parameter :: c(0:23) = [ 1.5319394088521e-3_BK, -1.8843445653409e-2_BK, &
                                            1.0170534986000e-1_BK, -3.1702448761286e-1_BK, &
                                            6.3520892642253e-1_BK, -8.8106985991189e-1_BK, &
                                            1.0517503764540d0_BK, 4.2674123235580e-1_BK, &
                                            1.5079083659190e-5_BK, -3.7095709111375e-4_BK, &
                                            4.0043972242353e-3_BK, -2.4964114079723e-2_BK, &
                                            1.0003913718511e-1_BK, -2.7751961573273e-1_BK, &
                                            6.6256121926465e-1_BK, 5.3766026150315e-1_BK, &
                                            1.4842542902609e-7_BK, -7.3027601203435e-6_BK, &
                                            1.5766326109233e-4_BK, -1.9658008013138e-3_BK, &
                                            1.5755176844105e-2_BK, -8.7413201405100e-2_BK, &
                                            4.1738741349777e-1_BK, 6.7740948115980e-1_BK ]


         real(BK), parameter :: TWO_POW_3   = 8.0_BK
         real(BK), parameter :: TWO_POW_16  = 65536.0_BK
         real(BK), parameter :: TWO_POW_48  = 281474976710656.0_BK
         real(BK), parameter :: TWO_POW_M3  = ONE/TWO_POW_3
         real(BK), parameter :: TWO_POW_M16 = ONE/TWO_POW_16
         real(BK), parameter :: TWO_POW_M48 = ONE/TWO_POW_48

         integer :: k
         real(BK) :: w,y,u

         if (x==ZERO) then
            cbrt = ZERO
            return
         end if

         w = abs(x)
         y = sign(HALF,x)

         if (w > TWO_POW_3) then
             do while (w > TWO_POW_48)
                 w = w * TWO_POW_M48
                 y = y * TWO_POW_16
             end do
             do while (w > TWO_POW_3)
                 w = w * TWO_POW_M3
                 y = y * TWO
             end do
         else if (w < ONE) then
             do while (w < TWO_POW_M48)
                 w = w * TWO_POW_48
                 y = y * TWO_POW_M16
             end do
             do while (w < ONE)
                 w = w * TWO_POW_3
                 y = y * HALF
             end do
         end if

         k = merge(0,merge(8,16,w<FOUR), w<TWO)

         u = ((((((c(k)   *w + c(k+1))*w +  c(k+2))*w+ c(k+3))*w+ &
                   c(k+4))*w + c(k+5))*w +  c(k+6))*w+ c(k+7)

         cbrt = y*(u+3*u*w/(w+2*u*u*u))
      end function cbrt


    ! Evaluate polynomial sum_{i=1}^{n} (x^(k-1)*p(k))
    pure real(BK) function evalpoly(n,x,p)
       integer, intent(in) :: n
       real(BK), intent(in) :: x,p(n)
       real(BK) :: xpoly(n)
       integer :: i
       xpoly(1) = ONE
       do i=2,n
         xpoly(i) = xpoly(i-1)*x
       end do
       evalpoly = dot_product(xpoly,p)
    end function evalpoly

    elemental real(BK) function muladd(A,x,y) result(axpy)
       real(BK), intent(in) :: A,x,y
       axpy = A*x+y
    end function muladd

end module bessels_constants
