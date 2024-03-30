#
#
# Open a new terminal window and run the following command to open `infile.txt` in nvim and execute the script:
#
#```bash
#nvr --servername /tmp/nvimsocket --remote-send "<C-w>v" --remote +startinsert infile.txt
#```
#
# In the same terminal window, run the script using nvr:
#
#```bash
#nvr --servername /tmp/nvimsocket --remote-send ":!./script.sh infile.txt outfile.txt<CR>"
#```
#
#
# Can the first command be aliased to nvim so that any new file is created in an nvim server instance?
#
# Can the second command be modified so that it is executed as the following workflow:
#
# (1) 'nvr --servername /tmp/nvimsocket --remote-send ":!./script.sh infile.txt outfile.txt<CR>"' is saved as metascript.sh
# (2) metascript.sh is executed as metascript.sh -s <int> -t <float>
# (3) nvr --servername /tmp/nvimsocket --remote-send ":!./script.sh -s 1000 -t -0.5 infile.txt outfile.txt<CR>" is executed
# (4) ./script.sh -s 1000 -t 0.5 is executed
# (5) -s <int> and -t <float> flags are carried through the layers of abstraction

