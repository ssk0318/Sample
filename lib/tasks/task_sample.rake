namespace :task_sample do
    desc "乗客をリセット"
    task :reset_passenger => :environment do

        #ログ
        logger = Logger.new 'log/task_sample.log'
        
        #処理
        Article.find_each {|article| article.update!(passenger:nil)}
    
        #デバッグのため
        p "OK!"
    end
end
