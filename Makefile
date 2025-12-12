.PHONY: all pdf html docx clean setup install deploy notebook slides

# Variables
BOOK_NAME = microeconomia-intermedia
QUARTO = quarto

# Target principal
all: pdf html

# Compilar a PDF
pdf:
	$(QUARTO) render manuscript/book.qmd --to pdf --output $(BOOK_NAME).pdf
	mv $(BOOK_NAME).pdf output/pdf/

# Compilar a HTML
html:
	$(QUARTO) render manuscript/book.qmd --to html --output $(BOOK_NAME).html
	mv $(BOOK_NAME).html output/html/
	cp -r _book/* output/html/ 2>/dev/null || true

# Compilar a DOCX (para compartir)
docx:
	$(QUARTO) render manuscript/book.qmd --to docx --output $(BOOK_NAME).docx
	mv $(BOOK_NAME).docx output/docx/

# Compilar presentaciones (por capítulo)
slides:
	for chapter in manuscript/chapters/*.qmd; do \
		if [ -f "$$chapter" ]; then \
			base=$$(basename $$chapter .qmd); \
			$(QUARTO) render $$chapter --to revealjs --output output/slides/$$base.html; \
		fi \
	done

# Limpiar archivos generados
clean:
	rm -rf _book/
	rm -rf output/*
	rm -f manuscript/*.aux manuscript/*.log manuscript/*.out
	rm -f manuscript/*.toc manuscript/*.bbl manuscript/*.blg
	find . -name "*.ipynb" -type f -delete
	find . -name "__pycache__" -type d -exec rm -rf {} + 2>/dev/null || true

# Instalar dependencias
setup:
	# Python
	pip install -r requirements.txt
	
	# R (si está disponible)
	Rscript -e "if(!require('rmarkdown')) install.packages('rmarkdown')" || true
	
	# Julia (si está disponible)
	julia -e 'using Pkg; Pkg.add("IJulia")' || true

# Instalar pre-commit hooks
install:
	pip install pre-commit
	pre-commit install

# Servir libro localmente
serve:
	$(QUARTO) preview manuscript/book.qmd

# Ejecutar tests
test:
	python -m pytest tests/ -v || echo "No tests directory found"

# Generar notebook de un capítulo específico
notebook:
	$(QUARTO) convert manuscript/chapters/$$(CHAPTER).qmd --to ipynb --output notebooks/$$(CHAPTER).ipynb

# Desplegar a GitHub Pages
deploy: html
	cd output/html && \
	git init && \
	git add -A && \
	git commit -m "Deploy to GitHub Pages" && \
	git push -f git@github.com:emanuelquintana-glitch/apuntes-microeconomia.git main:gh-pages

# Ayuda
help:
	@echo "Comandos disponibles:"
	@echo "  make all        Compilar PDF y HTML"
	@echo "  make pdf        Compilar solo PDF"
	@echo "  make html       Compilar solo HTML"
	@echo "  make docx       Compilar a Word"
	@echo "  make slides     Generar presentaciones"
	@echo "  make clean      Limpiar archivos generados"
	@echo "  make setup      Instalar dependencias"
	@echo "  make serve      Servir localmente"
	@echo "  make test       Ejecutar tests"
	@echo "  make deploy     Desplegar a GitHub Pages"
	@echo "  make notebook   Convertir capítulo a notebook"
	@echo "                  uso: make notebook CHAPTER=01-introduccion"
