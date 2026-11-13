import tkinter as tk

window = tk.Tk()
window.title("Student Application")
window.geometry("500x350")
window.configure(bg="#171923")


def clear_page():
    for widget in window.winfo_children():
        widget.destroy()


def first_page():
    clear_page()

    title = tk.Label(
        window,
        text="Welcome",
        font=("Arial", 22, "bold"),
        bg="#171923",
        fg="white"
    )
    title.pack(pady=60)

    button = tk.Button(
        window,
        text="Go to Page 2",
        font=("Arial", 13),
        bg="#5865F2",
        fg="white",
        command=second_page
    )
    button.pack()


def second_page():
    clear_page()

    title = tk.Label(
        window,
        text="Student Information",
        font=("Arial", 20, "bold"),
        bg="#171923",
        fg="white"
    )
    title.pack(pady=50)

    name = tk.Label(
        window,
        text="Student Name: Vahed",
        font=("Arial", 16),
        bg="#171923",
        fg="#00D9FF"
    )
    name.pack(pady=20)

    back = tk.Button(
        window,
        text="Back",
        command=first_page,
        bg="#5865F2",
        fg="white"
    )
    back.pack(pady=15)


first_page()
window.mainloop()


# ---------- OUTPUT ----------

# Page 1:
# Welcome
# [ Go to Page 2 ]

# Page 2:
# Student Information
# Student Name: Vahed
# [ Back ]
