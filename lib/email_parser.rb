class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails_only = @emails.split(/[, ]/).uniq
    emails_only.reject! {|e| e.empty?}
    emails_only
  end

end
