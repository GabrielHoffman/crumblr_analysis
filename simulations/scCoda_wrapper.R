# Gabriel Hoffman
# Nov 8, 2022
#
# R wrapper for scCoda

sccoda_wrapper = function(counts, info, formula, python_path='/usr/local/bin/python3'){
	library(reticulate)

	use_python(python_path)

	# Import library
	scoda = import("sccoda")
	scoda.utils = import("sccoda.util.cell_composition_data")
	scoda.analysis = import("sccoda.util.comp_ana")

	# combine counts and metadata
	df = cbind(counts, info)

	# Create combine dataset
	data = scoda.utils$from_pandas( r_to_py(as.data.frame(df)), r_to_py(array(all.vars(formula))))

	# Initialize analysis
	init = scoda.analysis$CompositionalAnalysis(data, as.character(formula)[2], colnames(counts)[1])

	# Run MCMC
	fit.mcmc = init$sample_hmc()

	# Extract results
	df = fit.mcmc$summary_prepare()
	res = df[[2]]

	# add variable and response names
	res$variable = unlist(lapply(all.vars(formula), function(x) rep(x,ncol(counts))))
	res$response = rep(colnames(counts), length(all.vars(formula)))

	res
}



# res = sccoda_wrapper(counts, info, ~ Age + Height, python_path = "/hpc/users/hoffmg01/.cache/R/basilisk/1.8.0/0/bin/python")