
USETEXTLINKS = 1
STARTALLOPEN = 0
WRAPTEXT = 1
PRESERVESTATE = 0
HIGHLIGHT = 1
ICONPATH = 'file:///C:/Users/Lab/Downloads/WinArl35/WinArl35/'    //change if the gif's folder is a subfolder, for example: 'images/'

foldersTree = gFld("<i>ARLEQUIN RESULTS (harmonia_arlequin.arp)</i>", "")
insDoc(foldersTree, gLnk("R", "Arlequin log file", "Arlequin_log.txt"))
	aux1 = insFld(foldersTree, gFld("Run of 12/06/20 at 10:19:09", "harmonia_arlequin.xml#12_06_20at10_19_09"))
	insDoc(aux1, gLnk("R", "Settings", "harmonia_arlequin.xml#12_06_20at10_19_09_run_information"))
		aux2 = insFld(aux1, gFld("Genetic structure (samp=pop)", "harmonia_arlequin.xml#12_06_20at10_19_09_pop_gen_struct"))
		insDoc(aux2, gLnk("R", "AMOVA", "harmonia_arlequin.xml#12_06_20at10_19_09_pop_amova"))
	aux1 = insFld(foldersTree, gFld("Run of 12/06/20 at 10:20:18", "harmonia_arlequin.xml#12_06_20at10_20_18"))
	insDoc(aux1, gLnk("R", "Settings", "harmonia_arlequin.xml#12_06_20at10_20_18_run_information"))
		aux2 = insFld(aux1, gFld("Loci under selection", "harmonia_arlequin.xml#12_06_20at10_20_18_fdist2_"))
	aux1 = insFld(foldersTree, gFld("Run of 12/06/20 at 10:25:23", "harmonia_arlequin.xml#12_06_20at10_25_23"))
	insDoc(aux1, gLnk("R", "Settings", "harmonia_arlequin.xml#12_06_20at10_25_23_run_information"))
		aux2 = insFld(aux1, gFld("Genetic structure (samp=pop)", "harmonia_arlequin.xml#12_06_20at10_25_23_pop_gen_struct"))
		insDoc(aux2, gLnk("R", "Pairwise distances", "harmonia_arlequin.xml#12_06_20at10_25_23_pop_pairw_diff"))
	aux1 = insFld(foldersTree, gFld("Run of 12/06/20 at 10:27:07", "harmonia_arlequin.xml#12_06_20at10_27_07"))
	insDoc(aux1, gLnk("R", "Settings", "harmonia_arlequin.xml#12_06_20at10_27_07_run_information"))
		aux2 = insFld(aux1, gFld("Genetic structure (samp=pop)", "harmonia_arlequin.xml#12_06_20at10_27_07_pop_gen_struct"))
		insDoc(aux2, gLnk("R", "Exact tests", "harmonia_arlequin.xml#12_06_20at10_27_07_pop_exct_tests"))
