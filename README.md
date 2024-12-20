# Configuration using aconfmgr

This is a saved config using aconfmgr. This config also saves selective dotfiles from the home-directory (specification is saved in `30-home.sh`). 

Most of the configuration is unspecified in `99-unsorted.sh`. Any files or packages which are explicitly installed/edited can be added to one of the other bash files. 

To save the current state:
```
aconfmgr save
```

To load a saved state:
```
aconfmgr apply
```