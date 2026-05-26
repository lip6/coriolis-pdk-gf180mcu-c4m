
from pathlib import Path
from coriolis.designflow.task    import ShellEnv
from coriolis.technos.common.dft import DftStdCells

__all__ = [ 'setup', 'pdkGFTop', 'pdkMasterTop' ]


pdkMasterTop = None
pdkGFTop     = None


def setup ():
    global pdkMasterTop
    global pdkGFTop

    from coriolis                     import Cfg 
    from coriolis                     import Viewer
    from coriolis                     import CRL 
    from coriolis.helpers             import overlay, l, u, n
    from coriolis.designflow.yosys    import Yosys
    from coriolis.designflow.iverilog import Iverilog
    from coriolis.designflow.klayout  import Klayout
    from coriolis.designflow.lvx      import Lvx
    from coriolis.designflow.x2y      import x2y
    from coriolis.designflow.tasyagle import TasYagle
    from .techno                      import setup as techno_setup 
    from .StdCell3V3Lib               import setup as StdCellLib_setup
    from .iolib                       import setup as iolib_setup

    pdkGFTop     = Path( __file__ ).parents[1] / 'gf180mcu'
    pdkMasterTop = Path( __file__ ).parent


    techno_setup()
    StdCellLib_setup()
    iolib_setup( pdkGFTop )

    liberty = pdkMasterTop / 'libs.ref' / 'StdCell3V3Lib' / 'liberty' / 'StdCell3V3Lib_nom.lib'
    
    with overlay.CfgCache(priority=Cfg.Parameter.Priority.UserFile) as cfg:
        cfg.misc.catchCore           = False
        cfg.misc.minTraceLevel       = 12300
        cfg.misc.maxTraceLevel       = 12400
        cfg.misc.info                = False
        cfg.misc.paranoid            = False
        cfg.misc.bug                 = False
        cfg.misc.logMode             = True
        cfg.misc.verboseLevel1       = True
        cfg.misc.verboseLevel2       = True
        cfg.etesian.graphics         = 3
        cfg.etesian.spaceMargin      = 0.10
        cfg.katana.eventsLimit       = 4000000
        af  = CRL.AllianceFramework.get()
        lg5 = af.getRoutingGauge('StdCell3V3Lib').getLayerGauge( 5 )
        lg5.setType( CRL.RoutingLayerGauge.PowerSupply )
        env = af.getEnvironment()
        env.setCLOCK( '^sys_clk$|^ck|^jtag_tck$' )


    spiceCells     = pdkMasterTop / 'libs.ref' / 'StdCell3V3Lib' / 'spice'
    stdCellLibVlog = pdkMasterTop / 'libs.ref' / 'StdCell3V3Lib' / 'verilog'/ 'stdcell.v'
    ngspiceTech    = pdkMasterTop / 'ngspice'
    klayoutTech    = pdkGFTop / 'libraries' / 'gf180mcu_fd_pr' / 'latest' / 'tech' / 'klayout'
    corner         = pdkGFTop / 'corner'
    kdrcRulesC4M   = pdkMasterTop / 'klayout' / 'tech' / 'C4M.gf180mcu' / 'drc' / 'DRC.lydrc'
    lypFile        = klayoutTech  / 'gf180mcu.lyp'
    Yosys.setLiberty( liberty )
    shellEnv = ShellEnv( 'GF180_c4m GF Alliance Environment' )
    shellEnv[ 'MBK_CATA_LIB' ] = shellEnv[ 'MBK_CATA_LIB' ] + ':' + spiceCells.as_posix()
    shellEnv.export()
    Iverilog.setStdCellLib( stdCellLibVlog )
    Klayout.setLypFile( lypFile )
    #DRC.setDrcRules( kdrcRulesC4M, DRC.C4M )
    #TODO incompleted DRC rules
    #DRC.setDrcRules( kdrcRulesMax, DRC.Maximal )
    #TODO sealring and filler

    TasYagle.flags         = TasYagle.Transistor
    TasYagle.SpiceType     = 'hspice'
    TasYagle.SpiceTrModel  = [ corner/'typical.lib','design.ngspice','sm141064.ngspice']
    TasYagle.MBK_CATA_LIB  = (pdkMasterTop/'libs.ref'/'StdCell3V3Lib'/'spice').as_posix() + ':'+ '.:' + (ngspiceTech).as_posix()
    Lvx.MBK_CATA_LIB       = TasYagle.MBK_CATA_LIB
    x2y.MBK_CATA_LIB       = TasYagle.MBK_CATA_LIB
    TasYagle.MBK_SPI_MODEL = ''
    TasYagle.Temperature   = 25.0
    TasYagle.VddSupply     = 5.0 
    TasYagle.VddName       = 'vdd'
    TasYagle.VssName       = 'vss'
    TasYagle.ClockName     = 'clk'




def getDftStdCells():
    dft = DftStdCells()

    # -------- Supported flip-flops (no native scan FF available) --------
    dft.dff_names = [
        "sff1_x4",
        "sff1r_x4",
    ]

    # -------- No mapping FF → Scan FF (will trigger mux-based scan insertion) --------
    dft.ff_to_scanff = {
        # empty → fallback to mux + FF creation
    }

    # -------- Fallback cells (used to build scan FFs) --------
    dft.mux_name = "mx2_x2"
    dft.buf_name = "buf_x1"

    # -------- Functional FF pin mapping --------
    dft.ff_pins = {
        "d": "i",
        "q": "q",
    }

    # -------- Scan control pins (must be defined even if generated) --------
    dft.scan_pins = {
        "si": "SI",
        "se": "SE",
    }

    # -------- Mux pin mapping --------
    dft.mux_pins = {
        "i0": "i0",
        "i1": "i1",
        "sel": "cmd",
        "out": "q",
    }

    # -------- Buffer pin mapping --------
    dft.buf_pins = {
        "i": "i",
        "z": "q",
    }

    # -------- Placement orientations --------
    dft.mux_orientation = "ID"
    dft.ff_orientation  = "ID"

    return dft
