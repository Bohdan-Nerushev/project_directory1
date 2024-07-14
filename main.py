#-------#-------#-------#-------#
#            main.py            #
#-------#-------#-------#-------#
#-------#-------#-------#-------#

from faker import Faker, Factory
from random import randint
import tkinter as tk
from tkinter import ttk
from datetime import datetime

#--------------#--------------#

faker = Factory.create('uk_UA')

#--------------#--------------#

def create_name(fake, n=10):
    users = ''
    for i in range(1, n+1):
        user = []
        user.append(i)
        user.append(fake.last_name())
        user.append(fake.first_name())
        users += f'({str(user)[1:-1]}), '
        
    users[:-2]    
    print(users)
    print()
    
    filename = f"create_name_{datetime.now().strftime('%H-%M-%d-%m-%Y')}.txt"
    with open(filename, "w", encoding="utf-8") as fh:
        fh.write(users)
        
    return users

#--------------#--------------#

def create_grades(fake, n=10):
    all_students_grade = ''
    for x in range(1, n+1):       
        all_students_grade += f"({x}, '{randint(1, 45)}', '{randint(1, 8)}', '{randint(1, 12)}', '{randint(2023, 2024)}-{randint(1, 12)}-{randint(1, 31)} {randint(1, 24)}:{randint(1, 60)}'), "

    all_students_grade[:-2]
    print(all_students_grade)
    print()

    a = f"create_grades_{datetime.now().strftime('%H-%M-%d-%m-%Y')}.txt"
    
    with open(a, "w", encoding="utf-8") as fh:
        fh.write(all_students_grade)
    
    return all_students_grade

#-------#-------#-------#-------#
#-------#-------#-------#-------#

if __name__ == '__main__':
    
#-------#-------#-------#-------#
#-------#-------#-------#-------#
    options_1 = [1, 10, 20, 30, 40, 50]
    options_2 = [1, 10, 20, 30, 40, 50]

    p_1 = 10
    p_2 = 10
#--------------#--------------#
    
    root = tk.Tk()
    root.title("Генерація данних для бази данних SQL")
    root.geometry("320x210")
    root.configure(bg='light yellow')
    
#--------------#--------------#
    
    def on_select_1(event):
        global p_1
        p_1 = int(combobox_1.get())

    def on_select_2(event):
        global p_2
        p_2 = int(combobox_2.get())

#--------------#--------------#

    frame_1 = tk.Frame(root, borderwidth=2, relief="groove")
    frame_1.pack(pady=5, padx=5)

    label_1 = tk.Label(frame_1, text="Згенерувати імена")
    label_1.pack(pady=5, padx=5)

    combobox_1 = ttk.Combobox(frame_1, values=options_1)
    combobox_1.pack(side="right", pady=5, padx=5)
    combobox_1.current(0)

    combobox_1.bind("<<ComboboxSelected>>", on_select_1)

    button_1 = tk.Button(frame_1, text="Натисни мене")
    button_1.pack(side='bottom', pady=5, padx=5)

    button_1.bind("<Button-1>", lambda event: create_name(faker, p_1))

#--------------#--------------#

    frame_2 = tk.Frame(root, borderwidth=2, relief="groove")
    frame_2.pack(pady=5, padx=5)

    label_2 = tk.Label(frame_2, text="Згенерувати оцінки")
    label_2.pack(pady=5, padx=5)

    combobox_2 = ttk.Combobox(frame_2, values=options_2)
    combobox_2.pack(side="right", pady=5, padx=5)
    combobox_2.current(0)

    combobox_2.bind("<<ComboboxSelected>>", on_select_2)

    button_2 = tk.Button(frame_2, text="Натисни мене")
    button_2.pack(side='bottom', pady=5, padx=5)

    button_2.bind("<Button-1>", lambda event: create_grades(faker, p_2))

#--------------#--------------#
    
    label_3 = tk.Label(root, text="* Данні буде збережено у файлі")
    label_3.pack()
    
    label_4 = tk.Label(root, text="  txt на робочому столі               ")
    label_4.pack()

#--------------#--------------#
    
    root.mainloop()
    
#-------#-------#-------#-------#
