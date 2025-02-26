# ALU de 32 Bits con bloqueo en Verilog por Jose Luis Chavez Gomez

Unidad Aritmético-Lógica (ALU) de 32 bits en Verilog. La ALU es capaz de realizar diversas operaciones aritméticas y lógicas con bloqueo.

## Características
- Operaciones soportadas:
  - Suma (`A + B`)
  - Resta (`A - B`)
  - AND (`A & B`)
  - OR (`A | B`)
  - Comparación (`A < B`)
- Indicador de bandera de cero (`Zero_Flag`)
- Implementación con bloqueo (`always @(*)`)

# Test Bench de ALU de 32 Bits con bloqueo en Verilog por Rodrigo Esaú Villegas Nuño
Este documento describe las características y el funcionamiento del *testbench* utilizado para verificar el correcto desempeño de una ALU de 32 bits implementada en Verilog.

### 1. Definición de Señales de Prueba
- **Entradas**:
  - `A` (32 bits): Primer operando.
  - `B` (32 bits): Segundo operando.
  - `ALU_sel` (3 bits): Código de operación que selecciona la función a ejecutar.
- **Salida**:
  - `R` (32 bits): Resultado de la operación.
  - Señales adicionales (opcional): `Zero_Flag`.

### 2. Generación de Estímulos
- Se aplican valores de prueba a `A` y `B`, incluyendo:
  - Números positivos.

### 3. Verificación de Resultados
- Se comparan las salidas con los valores esperados.
- Se generan mensajes de error si los resultados no coinciden.

### 4. Simulación con ModelSim
- Se incluyen retardos (`#100;`) para observar los cambios en las señales.

# Test Bench de ALU de 32 bits sin bloquo en verilog por Yahir Efren Borboa Quintero

Banco de pruebas de Unidad Aritmético-Lógica (ALU) de 32 bits en Verilog. La ALU es capaz de realizar diversas operaciones aritméticas y lógicas sin bloqueo.

## Características
- Operaciones soportadas:
  - Suma (`A + B`)
  - Resta (`A - B`)
  - AND (`A & B`)
  - OR (`A | B`)
  - Comparación (`A < B`)
- Indicador de bandera de cero (`Zero_Flag`)
