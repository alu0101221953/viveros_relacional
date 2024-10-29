# Modelo Relacional. Viveros

## 1. ***Descripción del Supuesto***
   
La empresa Tajinaste S.A. se dedica a la venta de plantas, productos de jardinería y decoración a través de su red de viveros. Actualmente, la empresa busca mejorar el control de stock en sus viveros y optimizar el seguimiento de sus operaciones mediante el siguiente sistema:
  
    - Cada vivero organiza sus productos en diferentes zonas, tales como zonas exteriores y almacenes. Se quiere conocer la cantidad disponible de cada producto en cada zona específica.  
    - Se realiza un seguimiento de los empleados, quienes pueden cambiar de vivero según la época del año, pero no desempeñan labores en más de un vivero a la vez. Además, cada empleado realiza su trabajo en una zona específica del vivero.  
    - La empresa controla la productividad de cada zona, registrando el histórico de trabajo y la productividad de los empleados.  
    - Existe un programa de fidelización, **Tajinaste Plus**, en el que los clientes acumulan bonificaciones basadas en el volumen de compras mensual. La empresa también realiza campañas dirigidas a estos clientes, para lo cual se registran sus pedidos desde que   
      ingresaron al programa.
    - Finalmente, se controla la capacidad de los empleados para alcanzar objetivos de venta, ya que un solo empleado es responsable de cada pedido gestionado para un cliente del programa Tajinaste Plus.

## 2. ***Entidades***

### 1. **Vivero**  
   Representa los distintos viveros de la empresa. Cada vivero tiene la siguiente información:  
   - **ID_Vivero**: Identificador único del vivero.  
   - **Georreferencia**: Latitud y longitud de su ubicación.  
   - **Nombre**: Nombre descriptivo del vivero.

### 2. **Zona**  
   Cada vivero se divide en zonas donde se ubican productos. Las zonas están caracterizadas por:  
   - **ID_Zona**: Identificador único de cada zona.  
   - **Georreferencia**: Latitud y longitud de la zona específica.  
   - **Tipo**: Tipo de la zona (ej. zona exterior, almacén, etc.).

### 3. **Producto**  
   Artículos de jardinería y decoración en venta en los viveros. Los productos se caracterizan por:  
   - **ID_Producto**: Identificador único de cada producto.  
   - **Nombre**: Nombre del producto.  
   - **Precio**: Precio unitario del producto.

### 4. **Cliente**  
   Personas que compran productos en los viveros. Los clientes tienen los siguientes atributos:  
   - **ID_Cliente**: Identificador único del cliente.  
   - **Nombre** y **Apellidos**: Información personal del cliente.  
   - **Correo**: Correo electrónico del cliente.  
   - **Bonificación**: Acumulación de puntos o bonificaciones.  
   - **Volumen_Compras**: Volumen total de compras acumuladas.  
   - **Tajinaste_Plus**: Indicador de si el cliente pertenece al programa de fidelización. Es de tipo ***bool***.

### 5. **Empleado**  
   Representa a los trabajadores de la empresa. Los empleados tienen los siguientes atributos:  
   - **DNI**: Documento de identificación único del empleado.  
   - **Nombre** y **Apellidos**: Información personal del empleado.

### 6. **Pedido**  
   Registro de compras realizadas por los clientes. Los pedidos contienen la siguiente información:  
   - **ID_Pedido**: Identificador único del pedido.  
   - **Fecha**: Fecha de realización del pedido.  
   - **Importe**: Coste total del pedido.

### 7. **Histórico Trabajo**  
   Contiene el histórico del puesto de cada empleado y su productividad en diferentes períodos. Sus atributos son:  
   - **ID_Histórico**: Identificador único del histórico.  
   - **Fecha_Inicio** y **Fecha_Fin**: Fechas que delimitan el período registrado.  
   - **Periodo**: Período del histórico del trabajo.
