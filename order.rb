class Order
    attr_reader :items, :placed_at, :time_spent
    include ItemContainer
    
    def initialize
        @items = Array.new
    end
    def place
        @placed_at = Time.now
    
=begin
        thr = Thread.new do
        Pony.mail(:to => StoreApplication::Admin.email,
            :from => "My Store <jason.binwood@gmail.com>",
            :via => :smtp, :via_options => {
              address: 'smtp.gmail.com',
              :port                 => '587',
              :enable_starttls_auto => true,
              user_name: 'jason.binwood@gmail.com',
              password: '6bh5snql83d8',
              authentication: :plain,
              domain: "mail.google.com",
              subject: "New order has been placed",
              body: "please check!!!" }
            )
        end
        while(thr.alive?)
            puts "."
            sleep(1)
        end
=end
        sent_email_at = Time.now
        @time_spent = sent_email_at - @placed_at
    end
end