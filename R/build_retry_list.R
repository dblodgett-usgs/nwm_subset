t1 <- c("t00z", "t06z", "t12z", "t18z")
t2 <- c("t00z", "t01z", "t02z", "t03z", "t04z", 
        "t05z", "t06z", "t07z", "t08z", "t09z", 
        "t10z", "t11z", "t12z", "t13z", "t14z", 
        "t15z", "t16z", "t17z", "t18z", "t19z", 
        "t20z", "t21z", "t22z", "t23z")

times <- list(aa = t2, sr = t2, mr = t1,
              lr1 = t1, lr2 = t1, lr3 = t1, lr4 = t1)

retry_dir <- "content/data/retry/"
dir.create(retry_dir)

day <- "nwm.20180724"

for(config in names(times)) {
  tt <- times[[config]]
  for(t in tt) {
    system(paste0("touch ", retry_dir, config, "__", day, "__", t))
  }
}
