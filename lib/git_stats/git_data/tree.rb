# -*- encoding : utf-8 -*-
require 'git_stats/hash_initializable'

module GitStats
  module GitData
    class Tree
      include HashInitializable

      attr_reader :repo, :relative_path

      def authors
        @authors ||= run_and_parse("git shortlog -se #{commit_range}").each{ |line| 
          line[:name] = line[:name].downcase 
          line[:email] = line[:email].downcase
        }
        .uniq.map { |author| Author.new(repo: self, name: author[:name], email: author[:email]) }
      end
      
      def ==(other)
        ((self.repo == other.repo) && (self.relative_path == other.relative_path))
      end

    end
  end
end
