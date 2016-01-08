class Author
        attr_accessor :name
@@post_count=[]
@@posts=[]
        def initialize(name)

                @author=name
                @posts=[]
        end

        def name
                @author
        end
        def posts
@posts
        end
        def add_post(post)
                @posts << post
                post.author=self
                @@posts << @posts
        end

        def add_post_by_title(post)
 post = Post.new(post)
    @posts << post
    post.author = self
@@posts << @posts


        end
        def self.post_count
                @@post_count=@@posts.count
        end
end