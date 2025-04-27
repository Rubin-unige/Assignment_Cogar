# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'First Assignment of CogAR'
copyright = '2025, Sarvenaz Ashoori | Rubin Khadka Chhetri'
author = 'Sarvenaz Ashoori | Rubin Khadka Chhetri'
release = '1.0'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.doctest',
    'sphinx.ext.intersphinx',
    'sphinx.ext.todo',
    'sphinx.ext.coverage',
    'sphinx.ext.mathjax',
    'sphinx.ext.ifconfig',
    'sphinx.ext.viewcode',
    'sphinx.ext.githubpages',
    "sphinx.ext.napoleon",
    'sphinx.ext.inheritance_diagram',
]

templates_path = ['_templates']
exclude_patterns = []



# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

# -- HTML output
html_theme = 'sphinx_rtd_theme'
html_static_path = ['_static']
html_show_sourcelink = False  # Disable Sphinx source links

# GitHub integration
html_context = {
    "display_github": True,
    "github_user": "Rubin-unige",
    "github_repo": "Assignment_Cogar",
    "github_version": "main",
    "conf_py_path": "/docs/source/",
}
