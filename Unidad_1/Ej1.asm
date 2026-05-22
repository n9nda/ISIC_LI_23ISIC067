.model small
.stack 100h

.data
    ; --- Espacio para el Cambio 1 ---
    edad db 20

.code
main proc
    ; Inicializaci??n del segmento de datos
    mov ax, @data
    mov ds, ax

    ; --- Espacio para el Cambio 2 ---
    
    ;Direccionamiento directo
    mov bl, edad
    
    ; Duireccionamiento inmediato
    mov bh, 30

    ; Finalizaci??n del programa
    mov ax, 4c00h
    int 21h
    
main endp
end main