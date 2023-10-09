# Pair programming de Verónica y Cristina

Este repositorio contiene los ejercicios de pair programming de Verónica y Cristina del primer sprint del tercer módulo. Tiene como objetivo demostrar nuestros conocimientos adquiridos de las diferentes lecciones de este sprint.

## Motivación:

Este repositorio posee diferentes modelos con las predicciones para la tienda Sephora y para una aerolínea. Se trataba de predecir el precio para Sephora y si un cliente iba a estar satisfecho o no con la experiencia durante el vuelo.

## Estructura:

Este repositorio contiene:

- Directorio `regresion_lineal`, que contiene los ejercicios de pair realizados de regresión lineal.
    1. Primer modelo:

        - Directorio `data`: Se encuentra el dataset original, así como el dataset modificado a lo largo de los pairs.

            - `sephora.csv`: Dataset original.
            - `sephora.txt`: Archivo `.txt` con la información de cada una de las columnas. 
            - `sephora2.csv`: Dataset limpio.
            - `sephora_norm.csv`: Dataset con la variable respuesta normalizada.
            - `sephora_estandar.csv`: Dataset con las variables predictoras numéricas estandarizadas.
            - `sephora_encoding.csv`: Dataset con las variables categóricas predictoras codificadas.
            - `resultados_metricas.csv`: Contiene las métricas del modelo de Regresión Lineal.
            - `metricas_finales.csv`: Contiene las métricas de todos nuestros modelos (Regresión Lineal, Decision Tree y Random Forest) 

        - Directorio `imagenes`: Contiene gráficas generadas a lo largo de los ejercicios de pair programming.

        - Directorio `notebooks`: Contiene diferentes archivos Jupyter Notebook con los ejercicios de pair programming.

            - `regresion_lineal1`: Ejercicios de pair programming del 31 de agosto del 2023. Realización del EDA de los datos, comprobación de la asimetría, la curtosis y la normalidad (tanto visual como analíticamente) de nuestra variable respuesta. 
            - `regresion_lineal2`: Ejercicios de pair programming del 1 de septiembre del 2023. Cálculo de la varianza y la correlación de nuestras variables numéricas. Comprobación de las tres asunciones (normalidad, homocedasticidad e independencia) de nuestros datos.
            - `regresion_lineal3`: Ejercicios de pair programming del 4 de septiembre del 2023. Intento de normalizar la variable respuesta y la estandarización de las variables predictoras numéricas. 
            - `regresion_lineal4`: Ejercicios de pair programming del 5 de septiembre del 2023. Realización del ANOVA y del *encoding* de nuestras variables categóricas.
            - `regresion_lineal5`: Ejercicios de pair programming del 7 de septiembre del 2023. Separamos nuestros datos en `X` e `y`, los separamos en `train` y `test` y ajustamos el modelo con el algoritmo de Regresión Lineal. Sacamos las métricas.
            - `regresion_lineal6`: Ejercicios de pair programming del 8 de septiembre del 2023. Realizamos los algoritmos de Decision Tree y Random Forest, sacamos métricas y conclusiones finales. 

    2. Segundo modelo:

        - Directorio `data`: Se encuentra el dataset original, así como el dataset modificado a lo largo de los pairs.

            - `sephora.csv`: Dataset original.
            - `sephora.txt`: Archivo `.txt` con la información de cada una de las columnas. 
            - `sephora2.csv`: Dataset limpio.
            - `sephora_norm.csv`: Dataset con la variable respuesta normalizada.
            - `sephora_estandar.csv`: Dataset con las variables predictoras numéricas estandarizadas.
            - `sephora_encoding.csv`: Dataset con las variables categóricas predictoras codificadas.
            - `resultados_metricas.csv`: Contiene las métricas del modelo de Regresión Lineal.
            - `metricas_finales.csv`: Contiene las métricas de todos nuestros modelos (Regresión Lineal, Decision Tree y Random Forest) 

        - Directorio `notebooks`: Contiene diferentes archivos Jupyter Notebook con los ejercicios de pair programming.

            - `regresion_lineal1`: Realización del EDA de los datos, comprobación de la asimetría, la curtosis y la normalidad (tanto visual como analíticamente) de nuestra variable respuesta. 
            - `regresion_lineal2`: Cálculo de la varianza y la correlación de nuestras variables numéricas. Comprobación de las tres asunciones (normalidad, homocedasticidad e independencia) de nuestros datos.
            - `regresion_lineal3`: Intento de normalizar la variable respuesta y la estandarización de las variables predictoras numéricas. 
            - `regresion_lineal4`: Realización del ANOVA y del *encoding* de nuestras variables categóricas.
            - `regresion_lineal5`: Separamos nuestros datos en `X` e `y`, los separamos en `train` y `test` y ajustamos el modelo con el algoritmo de Regresión Lineal. Sacamos las métricas.
            - `regresion_lineal6`: Realizamos los algoritmos de Decision Tree y Random Forest, sacamos métricas y conclusiones finales. 

- Directorio `regresion_logistica`, que contiene los ejercicios de pair realizados de regresión logística.

    - Directorio `data`: Se encuentra el dataset original, así como el dataset modificado a lo largo de los pairs.

        - `airlines.csv`: Dataset original.
        - `airlines.txt`: Archivo `.txt` con la información de cada una de las columnas. 
        - `airlines_limpio.txt` : Dataset limpio.
        - `airlines_estand.csv`: Dataset con los datos estandarizados.
        - `airlines_no_estand.csv`: Dataset con los datos **no** estandarizados.
        - `airlines_metricas.csv`: Métricas de los modelos de Regresión Logística con los datos estandarizados y sin estandarizar.
        - `metricas_decision_tree.csv`: Métricas de los modelos de Decision Tree con los datos estandarizados y sin estandarizar.
        -- `metricas_finales.csv`: Métricas de los modelos de Regresión Logística, Decision Tree y Random Forest, con los datos estandarizados y sin estandarizar.

    - Directorio `notebooks`: Contiene diferentes archivos Jupyter Notebook con los ejercicios de pair programming.

        - `regresion_logistica1`: Ejercicios de pair programming del 11 de septiembre del 2023. EDA de nuestros datos y preprocesamiento (estandarización de las variables numéricas, codificación de variables categóricas, comprobación del balanceo de nuestros datos.)
        - `regresion_logistica2`: Ejercicios de pair programming del 12 de septiembre del 2023. Ajustamos nuestro modelo al algoritmo de Regresión Logística y sacamos las métricas tanto de los datos estandarizados como sin estandarizar. 
        - `regresion_logistica3`: Ejercicios de pair programming del 13 de septiembre del 2023. Ajustamos nuestro modelo a los algoritmos de Decision Tree y Random Forest, y sacamos las métricas tanto de los datos estandarizados como sin estandarizar. 

### Librerías:

*Click en el nombre de cada una para acceder a su documentación oficial*

- [`NumPy`,](https://numpy.org/doc/stable/user/) para poder trabajar con los nulos..
- [`Pandas`,](https://pandas.pydata.org/docs/user_guide/index.html) para poder trabajar con DataFrames. 
- [`Matplotlib`,](https://matplotlib.org/stable/users/index.html) para poder realizar gráficas. 
- [`Seaborn`,](https://seaborn.pydata.org/tutorial.html) para poder realizar gráficas. 
- [`Scipy`,](https://docs.scipy.org/doc/scipy/) para poder realizar cálculos.
- [`itertools`,](https://docs.python.org/3/library/itertools.html) para poder realizar iteraciones con combinaciones.
- [`Scikit-learn`,](https://scikit-learn.org/stable/user_guide.html) para poder trabajar con ML. 
- [`Math`,](https://docs.python.org/3/library/math.html) para poder trabajar con funciones matemáticas.
- [`Warning`,](https://docs.python.org/es/3/library/warnings.html) para evitar que salgan avisos de error.
- [`Statsmodels`,](https://www.statsmodels.org/devel/user-guide.html) para realizar el ANOVA.
