git add *
Para revisar lo añadido al repositorio podemos ejecutar el siguiente comando:
git status

Todo lo que devuelva el listado será lo que se suba con el proyecto.

Solo queda hacer un commit, asignar el repositorio remoto y hacer un push

  git commit -m 'Subo la estructura del proyecto al repositorio de GitHub'
  git remote add origin https://github.com/cnahuina/encuestaSuntime.git
  git push -u origin master
