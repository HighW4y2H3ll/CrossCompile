FROM multiarch/crossbuild

Run useradd hu -s /bin/bash
Run usermod -a -G adm hu 
