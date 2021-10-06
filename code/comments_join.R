# All comments
load(here::here("data", "comments_min.Rdata"))

# CJ COMMENTS 

load(here::here("data", "cjcomments.Rdata"))

cjcomments %<>% left_join(comments_min)

save(cjcomments, file = here::here("data", "cjcomments.Rdata"))

# CLIMATE COMMENTS 
load(here::here("data", "climatecomments.Rdata"))

climatecomments %<>% left_join(comments_min)

# Climate + cj
load(here::here("data", "ejcommentsnew.Rdata"))

climatecomments %<>% mutate(cj = id %in% ejcommentsnew$id |
                              id %in% cjcomments$id)

save(climatecomments, file = here::here("data", "climatecomments.Rdata"))


