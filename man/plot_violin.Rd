% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/violinplot.R
\name{plot_violin}
\alias{plot_violin}
\title{plot_violin}
\usage{
plot_violin(
  input,
  title = "",
  gene,
  color_by,
  log_scale = F,
  colors = NULL,
  facet_by = NULL,
  spread = NULL,
  jitter_pts = T,
  plot_mean = T,
  plot_mean_dot_size = 2,
  size = 1,
  sig = 3,
  number_labels = T,
  text_sizes = c(20, 10, 5, 10, 5, 5, 2),
  alpha = 0.5,
  theme = "classic",
  contour_line_width = 0.3
)
}
\arguments{
\item{input}{SatijaLab’s Seurat Class, with normalized expression values in assay data slot. Or input Bioconductor’s ExpressionSet Class with (not log) values in exprs().}

\item{title}{Title of the graph. Would be the gene name if not specified}

\item{gene}{Feature for which to plot the expression level. For Seurat Object, ensure the correct DefaultAssay is specified prior to running this function. May access gene data through "assayname_GENE" e.g. "rna_CD8A", "adt_CD8"}

\item{color_by}{a meta.data column variable (Seurat) or pData variable (ExpressionSet).}

\item{log_scale}{If true, transform UMIs by log2(UMI + 1).}

\item{colors}{What colors to utilize for categorical data. Be sure it is of the proper length.}

\item{facet_by}{a vector with one or two meta.data column variables (Seurat) or pData variables (ExpressionSet). If two, the first variable as columns and the second as rows.}

\item{spread}{e.g. Healthy category is unique in Disease and Skin. To use Healthy only as skin but not Disease, that is adding Healthy skin to each disease, spread = c("Disease", "Healthy").}

\item{plot_mean}{plot the mean value as black dot with second y-axis on the right.}

\item{size}{the size of dots.}

\item{sig}{the number of digits after the decimal point for cell fraction value.}

\item{number_labels}{show the total cell numbers and cell fraction with non-zero expression values under each bar.}

\item{text_sizes}{a vector of title_size, axis_title, axis_text, legend_title, legend_text, facet_text, number_label_text_size, defaults too c(20,10,5,10,5,5,2)}

\item{theme}{the plot theme. Default to be "classic" if not set to "bw".}

\item{contour_line_width}{the thickness of the violin contour line}
}
\description{
Create violin plot. Function from Garber Lab SignallingSingleCell, modified for input Seurat Object and Expression Set
}
\details{
Utilize information stored in meta.data to control the plot display. Each point_by as a dot with a bar showing the weighted mean of all point_by dots.
}
\examples{
plot_violin(ex_sc gene = "CD8A", color_by = "Skin", facet_by = c("Disease", "CellType"), log_scale = F)
plot_violin(ex_sc, gene = "adt_CD8", color_by = "Skin", facet_by = c("Disease", "CellType"), log_scale = F)
plot_violin(ex_sc, gene = "CXCL13", color_by = "Skin", facet_by = c("CellType", "Disease"), spread = T, log_scale = T)
}
