# Using Jupyter Notebooks with Julia and Python

## What is Jupyter?

Jupyter Notebook (and its successor, JupyterLab) is an interactive, browser-based environment that lets you write and run code in cells, interspersed with formatted text, equations, and visualizations. It was originally built for Python but supports many languages, including Julia.

---

## Python in Jupyter

Python is Jupyter's native language — the default kernel is IPython, so no special setup is required beyond installation.

**Installation:**
```bash
pip install notebook        # classic Jupyter Notebook
pip install jupyterlab      # JupyterLab (recommended modern interface)
```

**Launching:**
```bash
jupyter notebook            # opens in browser at localhost:8888
jupyter lab                 # opens JupyterLab
```

Once open, create a new notebook and select the **Python 3** kernel. You can then write Python code in cells and run them with `Shift+Enter`. Output (text, plots, DataFrames, etc.) appears inline below each cell.

**Common libraries that integrate well with Jupyter:**
- `matplotlib` / `seaborn` — inline plots
- `pandas` — renders DataFrames as formatted tables
- `ipywidgets` — interactive sliders, dropdowns, and controls

---

## Julia in Jupyter

Julia requires an additional kernel called **IJulia** to run inside Jupyter. Once installed, it integrates seamlessly.

**Installation (from within Julia's REPL):**
```julia
using Pkg
Pkg.add("IJulia")
```

This installs the IJulia kernel and registers it with Jupyter automatically. You need to have Jupyter already installed (via Python/pip) before this step.

**Launching:**
```bash
jupyter lab     # then select "Julia" kernel when creating a new notebook
```

Alternatively, from the Julia REPL:
```julia
using IJulia
notebook()      # launches Jupyter directly
```

**Julia-specific tips:**
- The first cell in a session may be slow as Julia compiles code — subsequent calls are fast.
- Use `Plots.jl` or `Makie.jl` for inline visualizations.
- `DataFrames.jl` renders as formatted tables, similar to pandas.

---

## Working with Both Languages Together

If you need to mix Julia and Python in the same workflow, consider:

- **Separate notebooks** — one per language, sharing data via files (CSV, HDF5, etc.)
- **PyCall.jl** — call Python libraries from within a Julia notebook
- **JuliaCall** (Python package) — call Julia from within a Python notebook

---

## Key Shortcuts (both languages)

| Action | Shortcut |
|--------|----------|
| Run cell | `Shift + Enter` |
| Run and insert below | `Alt + Enter` |
| New cell above | `A` (command mode) |
| New cell below | `B` (command mode) |
| Delete cell | `DD` (command mode) |
| Switch to Markdown | `M` (command mode) |
| Switch to Code | `Y` (command mode) |
| Enter command mode | `Esc` |
