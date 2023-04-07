
#==============================================#
#==  Build date: 2023-04-07T21:39:27.688593  ==#
#==      Built by: arnov @ MSI on win32      ==#
#==             Task name: init              ==#
#==============================================#
#@STEP
##################################
##  Install number (0) = Scoop  ##
##################################

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force; 
irm get.scoop.sh | iex; 
#@END STEP

#@STEP
################################
##  Install number (1) = git  ##
################################

scoop install git; 
#@END STEP

#@STEP
##################################
##  Install number (2) = Aria2  ##
##################################

scoop install aria2; 
#@END STEP

#@STEP
##########################################
##  Install number (3) = Scoop-Buckets  ##
##########################################

scoop bucket add extras; 
scoop bucket add versions; 
scoop bucket add nerd-fonts; 
#@END STEP

#@STEP
#################################
##  Install number (4) = sudo  ##
#################################

scoop install sudo; 
#@END STEP

#@STEP
#############################################
##  Install number (5) = Windows Terminal  ##
#############################################

scoop install windows-terminal; 
reg import $( Resolve-Path "~\scoop\apps\windows-terminal\current\install-context.reg"); 
scoop install vcredist2022; 
scoop uninstall vcredist2022; 
#@END STEP

#@STEP
######################################
##  Install number (6) = coreutils  ##
######################################

scoop install coreutils; 
#@END STEP

#@STEP
####################################
##  Install number (7) = psutils  ##
####################################

scoop install psutils; 
#@END STEP

#@STEP
###############################
##  Install number (8) = gh  ##
###############################

scoop install gh; 
#@END STEP

#@STEP
###################################
##  Install number (9) = zoxide  ##
###################################

scoop install zoxide; 
#@END STEP

#@STEP
####################################
##  Install number (10) = Python  ##
####################################

scoop install python; 
regedit.exe /s $(Resolve-Path "~/scoop/apps/python/current/install*reg"); 
#@END STEP

#@STEP
################################
##  Install number (11) = Go  ##
################################

scoop install go; 
#@END STEP

#@STEP
###################################
##  Install number (12) = Ghrel  ##
###################################

go install github.com/jreisinger/ghrel@latest; 
#@END STEP

#@STEP
#################################
##  Install number (13) = Bat  ##
#################################

go install github.com/astaxie/bat; 
#@END STEP

#@STEP
###################################
##  Install number (14) = jq-yq  ##
###################################

scoop install jq; 
scoop install yq; 
#@END STEP

#@STEP
########################################
##  Install number (15) = Nerd-Fonts  ##
########################################

sudo scoop install -g FiraCode-NF; 
sudo scoop install -g Iosevka-NF; 
#@END STEP

#@STEP
############################################
##  Install number (16) = Terminal-Icons  ##
############################################

Install-Module -Name Terminal-Icons -Repository PSGallery; 
#@END STEP

