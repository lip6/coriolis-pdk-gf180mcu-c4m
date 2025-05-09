
from pathlib import Path
from coriolis.designflow.technos import Where
from coriolis.designflow.task    import ShellEnv


__all__ = [ 'setup', 'pdkGFTop', 'pdkMasterTop' ]


pdkMasterTop = None
pdkGFTop     = None


def setup ( checkToolkit=None ):
    global pdkMasterTop
    global pdkGFTop

    from coriolis                     import Cfg 
    from coriolis                     import Viewer
    from coriolis                     import CRL 
    from coriolis.helpers             import overlay, l, u, n
    from coriolis.designflow.yosys    import Yosys
    from coriolis.designflow.klayout  import Klayout
    from coriolis.designflow.tasyagle import TasYagle
    from .techno                      import setup as techno_setup 
    from .StdCell3V3Lib               import setup as StdCellLib_setup
    from .iolib                       import setup as iolib_setup

    pdkGFTop     = Path( __file__ ).parents[1] / 'gf180mcu'
    pdkMasterTop = Path( __file__ ).parent

    Where( checkToolkit )

    techno_setup()
    StdCellLib_setup()
    iolib_setup( pdkGFTop )

    liberty  = pdkMasterTop / 'libs.ref' / 'StdCell3V3Lib' / 'liberty' / 'StdCell3V3Lib_nom.lib'
    
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

    Yosys.setLiberty( liberty )
    ShellEnv.CHECK_TOOLKIT = Where.checkToolkit.as_posix()
