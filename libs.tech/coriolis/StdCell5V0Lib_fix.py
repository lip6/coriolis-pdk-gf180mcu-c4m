import os
from pathlib import Path

from coriolis.CRL import Spice

def fix(lib):
    spiceDir = Path(__file__).parent / 'libs.ref' / 'StdCell5V0Lib' / 'spice'
    Spice.load( lib, str(spiceDir / 'StdCell5V0Lib.spi'), Spice.PIN_ORDERING )
    for cell in lib.getCells():
        cell.setTerminalNetlist( True )

