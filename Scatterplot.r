
set.seed(2016)  # There is a typo in the video (set.seed=2016)

Test_1_scores=round(rnorm(50, 78, 10))

Test_2_scores=round(rnorm(50, 78, 14))

Test_1_scores # Data won't be the same with the data generated in the video lecture since there was a typo in set.seed. 

Test_2_scores # Data won't be the same with the data generated in the video lecture since there was a typo in set.seed. 

plot(Test_2_scores~Test_1_scores)

plot(Test_2_scores~Test_1_scores, main='Test scores for two exams (50 students)', xlab='Test_1_scores', ylab='Test 2 scores')

plot(Test_2_scores~Test_1_scores, main='Test scores for two exams (50 students)', xlab='Test_1_scores', ylab='Test 2 scores', col='blue')


