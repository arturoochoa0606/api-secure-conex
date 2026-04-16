# API Secure Conex

Infraestructura de **APIs seguras** desarrollada en **Python (FastAPI)** para conexión entre una base de datos web y un sistema de ecommerce.  
Incluye autenticación con **JWT**, gestión de usuarios, productos y órdenes, y conexión segura con la base de datos.

---

## 🚀 Características principales

- Registro y autenticación de usuarios con **JWT**.
- Gestión de productos (crear, listar).
- Creación de órdenes de compra asociadas a usuarios.
- Conexión segura con base de datos mediante **SQLAlchemy**.
- Documentación automática con **Swagger UI** en `/docs`.

---

## 📂 Estructura del proyecto

api-secure-conex/
│── main.py              # Punto de entrada de la API
│── database.py          # Configuración de la base de datos
│── models.py            # Modelos ORM (User, Product, Order)
│── schemas.py           # Esquemas Pydantic para validación
│── auth.py              # Seguridad y generación de tokens JWT
│── crud.py              # Operaciones CRUD
│── config.py            # Configuración general
│── requirements.txt     # Dependencias del proyecto



---

## ⚙️ Instalación

1. Clonar el repositorio:
   ```bash
   git clone https://github.com/tuusuario/api-secure-conex.git
   cd api-secure-conex


python -m venv venv
source venv/bin/activate   # Linux/Mac
venv\Scripts\activate      # Windows
pip install -r requirements.txt


export DATABASE_URL="sqlite:///./secure_conex.db"
export SECRET_KEY="supersecretkey"

uvicorn main:app --reload
Endpoints principales
Autenticación
POST /register → Registrar usuario

POST /token → Obtener token JWT

Productos
POST /products → Crear producto

GET /products → Listar productos (puedes extenderlo)

Órdenes
POST /orders → Crear orden (requiere token JWT)
