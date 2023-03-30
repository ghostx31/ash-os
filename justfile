date := `date +%m.%d`
build: 
  mkarchiso -v -w build/ archiso/

clean:
  sudo rm -rf build/

run:
  run_archiso -u -i out/ashos-{{ date }}-x86_64.iso

install:
  sudo pacman -S - < pkglist.txt --needed
