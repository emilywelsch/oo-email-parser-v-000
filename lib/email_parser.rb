# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails
  @@all = []

  def initialize(emails)
    @emails = emails
  end

  # def email?(string)
  #   if string.include?(" ") || string.include?(",")
  #     false
  #   else true
  #   end
  # end

  def parse
    emails_only = @emails.split(/[, ]).uniq
    emails_only.reject! {|e| e.empty?}
    emails_only
  end

end
