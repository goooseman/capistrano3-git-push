namespace :git do
  desc 'Push changes if there are any'
  task :push do
    on roles(:all) do
      status = %x(git status --porcelain).chomp
      if status != ""

        set :commit_message, ask("commit message (or input skip to skip)", "commit")
        if fetch(:commit_message) != 'skip'
          run_locally do
            execute "git add -A"
            execute "git commit -m '#{fetch(:commit_message)}'"
          end
        end
      end
      execute "git push"
    end
  end
end
