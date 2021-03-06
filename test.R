

p <- pipeline(prep_onehot(~Species))

p <- pipeline(
  prep_binarize(~cyl, levels=8, replace = NA),
  prep_substitute(mpg~vs+am+gear, method=median),
  prep_impute(~cyl, method = median))




p$fit(mtcars)
p$transform(mtcars)

p <- prep_onehot(~sel_lambda(function(x) sum(x) < 20))

p <-
  prep_impute() %|>%
  prep_minmax() %|>%
  prep_onehot(~Species) %|>%
  sink_xgboost()

res <- p$fit_transform(iris)

  sink_sparse(~sel_regex("=")+carb)

p$fit_transform(mtcars)

mtcars$mpg[1:10] <- NA
mtcars$cyl[20:30] <- NA


#p <- prep_onehot(~cyl)
p <- prep_impute()
p$fit_transform(x=mtcars)



p <- prep_onehot(~cyl)
p$fit_transform(mtcars)

p <- pipeline(prep_impute(), prep_onehot(~cyl))
p <- pipeline(prep_onehot(~cyl), prep_impute())

match(mtcars$cyl, unique(mtcars$cyl), nomatch = 0)
