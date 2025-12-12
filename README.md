#  Apuntes de Microeconomía Intermedia

**Apuntes académicos basados en "Intermediate Microeconomics and Its Application" (11ª Edición) de Walter Nicholson y Christopher Snyder**

##  Autor
**Emanuel Quintana Silva**  
Economista en formación | Universidad Pedagógica y Tecnológica de Colombia (UPTC)  
Pasión por Econometría Computacional, Estadística y Ciencias Sociales  
 emanuel.quintana@uptc.edu.co  
 ORCID: 0009-0006-8419-2805  
 GitHub: [@emanuelquintana-glitch](https://github.com/emanuelquintana-glitch)

##  Objetivo del Proyecto
Crear apuntes interactivos y computacionales del clásico texto de Nicholson & Snyder, integrando:
- Explicaciones teóricas detalladas
- Implementaciones computacionales en Python/R/Julia
- Aplicaciones con datos reales
- Ejercicios resueltos programáticamente
- Visualizaciones interactivas

##  Estructura del Libro (Basado en Nicholson & Snyder 11E)

### Parte I: Introducción
1. Introducción a la Microeconomía
2. Modelos Económicos y Matemáticas

### Parte II: Teoría del Consumidor
3. Preferencias y Utilidad
4. Maximización de Utilidad y Elección
5. Demanda Individual y de Mercado
6. Aplicaciones del Modelo de Demanda

### Parte III: Teoría de la Producción y Costos
7. Tecnología de Producción
8. Costos
9. Maximización de Beneficios

### Parte IV: Estructuras de Mercado
10. Competencia Perfecta
11. Monopolio
12. Competencia Imperfecta

### Parte V: Temas Avanzados
13. Incertidumbre
14. Teoría de Juegos
15. Información Asimétrica
16. Economía del Comportamiento
17. Economía y el Tiempo

##  Tecnologías Utilizadas

### Lenguajes
- **Quarto**: Publicación académica
- **Python**: Análisis de datos y modelos
- **R**: Estadística y econometría
- **Julia**: Computación de alto desempeño
- **LaTeX**: Tipografía matemática

### Paquetes Principales
```python
# Python
numpy, pandas, matplotlib, seaborn, scipy, statsmodels, pulp, sympy

# R
tidyverse, ggplot2, econometrics, micEcon, gameTheory

# Julia
JuMP, Optim, Plots, DataFrames, Distributions
```
##  Cómo Usar Este Repositorio

### Requisito
```bash
# Instalar Quarto
# Visita: https://quarto.org/docs/download/

# Instalar lenguajes (opcional)
sudo apt install python3 r-base julia  # Ubuntu/Debian
```
### Compilación
```bash
# Compilar a PDF
quarto render manuscript/book.qmd --to pdf

# Compilar a HTML (con interactividad)
quarto render manuscript/book.qmd --to html

# Previsualizar
quarto preview manuscript/book.qmd

# Compilar todo
make all
```
### Desarrollo
```bash
# Clonar y configurar
git clone https://github.com/emanuelquintana-glitch/apuntes-microeconomia.git
cd apuntes-microeconomia

# Instalar dependencias Python
pip install -r requirements.txt

# Ejecutar notebooks de práctica
jupyter notebook notebooks/
```
## Características Especiales

### 1. **Código Ejecutable**

Todos los ejemplos económicos están implementados en código ejecutable.

### 2. **Visualizaciones Interactivas**

Gráficos que permiten explorar conceptos económicos.

### 3. **Aplicaciones con Datos Reales**

Uso de bases de datos económicas públicas.

### 4. **Ejercicios Computacionales**

Problemas que requieren implementación programática.

### 5. **Integración Multi-lenguaje**

Uso óptimo de Python, R y Julia según la aplicación.

##  Contribuciones

Este es un proyecto académico abierto. Las contribuciones son bienvenidas en:

- Correcciones teóricas
    
- Mejoras en implementaciones computacionales
    
- Nuevos ejemplos y aplicaciones
    
- Traducciones o adaptaciones
    

##  Licencia

Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International

##  Referencia Principal

*Nicholson, W., & Snyder, C. (2017). _Intermediate Microeconomics and Its Application_ (11th ed.). Cengage Learning.* 
