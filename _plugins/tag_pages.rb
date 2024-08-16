module Jekyll
    class TagPageGenerator < Generator
      safe true
  
      def generate(site)
        site.tags.each_key do |tag|
          site.pages << TagPage.new(site, site.source, 'tag', tag)
        end
      end
    end
  
    class TagPage < Page
      def initialize(site, base, dir, tag)
        @site = site
        @base = base
        @dir  = dir
        @name = "#{tag.downcase.gsub(' ', '-')}.html"
  
        self.process(@name)
        self.read_yaml(File.join(base, '_layouts'), 'tag.html')
        self.data['tag'] = tag
        self.data['title'] = "Articles tagged with #{tag}"
      end
    end
  end