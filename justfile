date := `date +%Y.%m.%d`
build: 
  sudo mkarchiso -v -w build/ archiso/

clean:
  sudo rm -rf build/

run:
  run_archiso -u -i out/ashos-{{ date }}-x86_64.iso
