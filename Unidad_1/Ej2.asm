.model small
.stack 100h

.data
    ; --- Espacio para el Cambio 1 y 2 ---
   
    msj db 'Prueba de Formato', 13, 10, 'Linea Dos con Sonido', 7, '$'

.code
main proc
    ; Inicializaci??n del segmento de datos
    mov ax, @data
    mov ds, ax

    ; Funci??n 09h de la INT 21h para imprimir cadena
    mov ah, 09h
    lea dx, msj
    int 21h

    ; Finalizaci??n del programa
    mov ax, 4c00h
    int 21h
main endp
end main