# Julia Notebook

### Requirements 

* [julia](https://julialang.org/)
* [Jupyter](https://jupyter.org/)

### Environment

Once you have Julia and Jupyter installed, go to the current folder within your terminal. Enter julia and instantiate the environment to install the dependencies by running the following (`]` will take you to the package manager) :
```
]
activate .
instantiate
```
Note: If there are any errors when installing the dependencies, you can install the specific dependency by entering julia (press backspace if you are still in the package manager) and calling the following:
```
import Pkg
Pkg.add("<failing package>")
Pkg.build("<failing package>")
```
Quit out of julia by pressing `Ctrl+D`. Run jupyter-lab or jupyter-notebook from the terminal by entering `jupyter-lab .` or `jupyter-notebook .`. This should automatically use the Julia environment defined in the folder it was run from. 