import tkinter as tk
from tkinter import messagebox
from tkinter import ttk
import time


# Algoritmos de ordenamiento
def bubble_sort(arr):
    n = len(arr)
    for i in range(n):
        for j in range(0, n-i-1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
    return arr


def insertion_sort(arr):
    for i in range(1, len(arr)):
        key = arr[i]
        j = i - 1
        while j >= 0 and key < arr[j]:
            arr[j + 1] = arr[j]
            j -= 1
        arr[j + 1] = key
    return arr


def merge_sort(arr):
    if len(arr) > 1:
        mid = len(arr) // 2
        left = arr[:mid]
        right = arr[mid:]

        merge_sort(left)
        merge_sort(right)

        i = j = k = 0
        while i < len(left) and j < len(right):
            if left[i] < right[j]:
                arr[k] = left[i]
                i += 1
            else:
                arr[k] = right[j]
                j += 1
            k += 1

        while i < len(left):
            arr[k] = left[i]
            i += 1
            k += 1

        while j < len(right):
            arr[k] = right[j]
            j += 1
            k += 1
    return arr


def quick_sort(arr):
    if len(arr) <= 1:
        return arr
    pivot = arr[len(arr) // 2]
    left = [x for x in arr if x < pivot]
    middle = [x for x in arr if x == pivot]
    right = [x for x in arr if x > pivot]
    return quick_sort(left) + middle + quick_sort(right)


# Función para manejar la entrada de datos y ordenamiento
def sort_numbers():
    try:
        numbers = list(map(int, entry_numbers.get().split(',')))
        if len(numbers) > 40:
            messagebox.showerror("Error", "Por favor, ingrese un máximo de 40 números.")
            return

        selected_method = sorting_method.get()
        if not selected_method:
            messagebox.showerror("Error", "Seleccione un método de ordenamiento.")
            return

        original_numbers = numbers.copy()

        # Selección de método de ordenamiento
        start_time = time.time()
        if selected_method == "Burbuja":
            bubble_sort(numbers)
        elif selected_method == "Inserción":
            insertion_sort(numbers)
        elif selected_method == "Merge Sort":
            merge_sort(numbers)
        elif selected_method == "Quick Sort":
            numbers = quick_sort(numbers)
        elif selected_method == "Sort (Python)":
            numbers.sort()
        end_time = time.time()

        elapsed_time = end_time - start_time

        # Mostrar resultados
        result_original.set(f"Original: {original_numbers}")
        result_sorted.set(f"Ordenada: {numbers}")
        result_time.set(f"Tiempo: {elapsed_time:.6f} segundos")
    except ValueError:
        messagebox.showerror("Error", "Por favor, ingrese una lista de números separados por comas.")


# Crear la ventana principal
window = tk.Tk()
window.title("Ordenamiento de Números")

# Entradas y selección de método
frame = tk.Frame(window, padx=10, pady=10)
frame.pack()

tk.Label(frame, text="Ingrese los números (separados por comas):").grid(row=0, column=0, sticky="w")
entry_numbers = tk.Entry(frame, width=50)
entry_numbers.grid(row=1, column=0, pady=5)

tk.Label(frame, text="Seleccione el método de ordenamiento:").grid(row=2, column=0, sticky="w")
sorting_method = ttk.Combobox(frame, values=["Burbuja", "Inserción", "Merge Sort", "Quick Sort", "Sort (Python)"])
sorting_method.grid(row=3, column=0, pady=5)

btn_sort = tk.Button(frame, text="Ordenar", command=sort_numbers)
btn_sort.grid(row=4, column=0, pady=10)

# Resultados
result_frame = tk.Frame(window, padx=10, pady=10)
result_frame.pack()

result_original = tk.StringVar()
result_sorted = tk.StringVar()
result_time = tk.StringVar()

tk.Label(result_frame, textvariable=result_original).pack(anchor="w")
tk.Label(result_frame, textvariable=result_sorted).pack(anchor="w")
tk.Label(result_frame, textvariable=result_time).pack(anchor="w")

# Iniciar la aplicación
window.mainloop()