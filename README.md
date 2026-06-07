# 🇨🇴 Predicción del Estado de Beneficiarios — Más Familias en Acción

![Python](https://img.shields.io/badge/Python-3.10+-blue?logo=python)
![Status](https://img.shields.io/badge/Estado-En%20desarrollo-yellow)
![License](https://img.shields.io/badge/Licencia-MIT-green)
![Dataset](https://img.shields.io/badge/Datos-datos.gov.co-orange)

Proyecto Integrador de Maestría en Ciencia de Datos — Universidad da Vinci (2026)

---

## 📌 Descripción

Este proyecto aplica técnicas de **Machine Learning** para predecir el estado de los beneficiarios del programa **Más Familias en Acción (MFA)** — el mayor programa de transferencias monetarias condicionadas de Colombia, operado por el Departamento Administrativo para la Prosperidad Social (DPS) entre 2001 y 2024, actualmente absorbido por **Renta Ciudadana**.

### Pregunta de investigación

> ¿Es posible predecir si un beneficiario del programa Más Familias en Acción estará **activo, suspendido o retirado** a partir de sus características demográficas, geográficas y de programa, utilizando algoritmos de clasificación?

Los patrones identificados buscan informar la focalización de intervenciones preventivas en programas sociales como Renta Ciudadana.

---

## 📂 Estructura del repositorio

```
mfa-prediccion-estado-beneficiarios/
│
├── README.md
├── requirements.txt
├── .gitignore
│
├── data/
│   ├── raw/                  # ⚠️ No incluido en el repo (ver sección Dataset)
│   └── processed/            # Versiones procesadas y muestras
│
├── notebooks/
│   ├── 01_exploracion.ipynb  # Análisis Exploratorio de Datos (EDA)
│   ├── 02_preparacion.ipynb  # Limpieza y transformación
│   └── 03_modelado.ipynb     # Entrenamiento y evaluación de modelos
│
├── src/
│   └── utils.py              # Funciones reutilizables
│
└── reports/
    ├── entrega1.docx         # Primer borrador del proyecto integrador
    └── figuras/              # Visualizaciones generadas
```

---

## 📊 Dataset

**Nombre:** Beneficiarios Más Familias en Acción  
**Fuente:** [Portal de Datos Abiertos de Colombia](https://www.datos.gov.co)  
**Entidad:** Departamento Administrativo para la Prosperidad Social — DPS  
**Licencia:** Creative Commons Attribution | Share Alike 4.0 International  
**Registros:** ~3,960,000 filas | **Variables:** 22 columnas  
**Última actualización de datos:** 31 de julio de 2024

> ⚠️ El archivo CSV no está incluido en este repositorio.  
> Para reproducir el análisis, descárgalo directamente desde datos.gov.co y colócalo en `data/raw/beneficiarios_mfa.csv`.

### Variables principales

| Variable | Tipo | Descripción |
|---|---|---|
| `EstadoBeneficiario` | Categórica | **Variable objetivo**: activo / suspendido / retirado |
| `Genero` | Binaria | Género del beneficiario |
| `RangoEdad` | Ordinal | Rango de edad del beneficiario |
| `NivelEscolaridad` | Ordinal | Nivel educativo |
| `Etnia` | Categórica | Etnia del beneficiario |
| `Discapacidad` | Binaria | Presencia de discapacidad |
| `Bancarizado` | Binaria | Inclusión en sistema financiero |
| `NombreDepartamentoAtencion` | Categórica | Departamento de atención |
| `TipoBeneficio` | Categórica | Tipo de incentivo recibido |
| `RangoUltimoBeneficioAsignado` | Ordinal | Rango del último beneficio |

---

## 🔬 Metodología

El proyecto sigue la metodología **CRISP-DM** con las siguientes fases:

1. ✅ **Comprensión del negocio** — Definición del problema y objetivos
2. ✅ **Comprensión de los datos** — Exploración inicial y EDA
3. 🔄 **Preparación de los datos** — Limpieza, codificación, balanceo de clases
4. ⏳ **Modelado** — Random Forest, Gradient Boosting (XGBoost)
5. ⏳ **Evaluación** — Precisión, Recall, F1-score por clase
6. ⏳ **Comunicación de resultados** — Dashboard e informe final

---

## ⚙️ Instalación y uso

```bash
# 1. Clonar el repositorio
git clone https://github.com/TU_USUARIO/mfa-prediccion-estado-beneficiarios.git
cd mfa-prediccion-estado-beneficiarios

# 2. Crear entorno virtual
python -m venv venv
source venv/bin/activate        # Linux/Mac
venv\Scripts\activate           # Windows

# 3. Instalar dependencias
pip install -r requirements.txt

# 4. Colocar el dataset
# Descargar de datos.gov.co y guardar como:
# data/raw/beneficiarios_mfa.csv

# 5. Ejecutar notebooks en orden
jupyter notebook notebooks/
```

---

## 📈 Resultados preliminares

> 🔄 En desarrollo — se actualizará conforme avance el proyecto.

---

## 🗂️ Entregas del proyecto

| Entrega | Descripción | Estado |
|---|---|---|
| Entrega 1 | Primer borrador: EDA, preparación de datos, marco teórico | ✅ Completada |
| Entrega 2 | Modelado y evaluación de algoritmos | ⏳ Pendiente |
| Entrega Final | Comunicación de resultados y dashboard | ⏳ Pendiente |

---

## 📚 Referencias clave

- DPS Colombia. (2024). Dataset Beneficiarios MFA. datos.gov.co
- Solís-Salazar & Madrigal-Sanabria. (2022). ML para predecir pobreza. *Revista Tecnología en Marcha*
- Medina & Posso. Efectos de largo plazo de Familias en Acción. Banco de la República de Colombia
- CEPAL. (2019). Historia del programa Familias en Acción (2001-2018)

---

## 👤 Autor

**Juan David Julio San Juan**  
Maestría en Ciencia de Datos — Universidad da Vinci  
Barranquilla, Colombia · 2026

---

*Datos utilizados bajo licencia Creative Commons Attribution | Share Alike 4.0 International*