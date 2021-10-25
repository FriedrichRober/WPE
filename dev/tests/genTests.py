import sys
import os
import shutil
from subprocess import Popen, PIPE, STDOUT, TimeoutExpired

# https://stackoverflow.com/questions/287871/how-to-print-colored-text-to-the-terminal
class bcolors:
    FAIL = '\033[91m'
    ENDC = '\033[0m'

# optional argument GAP path
GAP = '/bin/gap.sh'
if sys.argv[1:]:
    GAP = sys.argv[1]

MEMORY = '3G'

for ROOT in ['centraliser', 'conjugacyClasses'] :
    Popen([GAP, '-q', '-o', MEMORY, 'generate.g'], cwd = ROOT, stdin=PIPE, stdout=PIPE, stderr=STDOUT,encoding='utf8')
    OUT = ROOT+'/out'
    for FILE in [f for f in os.listdir(OUT) if os.path.isfile(os.path.join(OUT, f))] :
        shutil.copyfile(OUT+'/'+FILE, '../../tst/files/'+FILE)