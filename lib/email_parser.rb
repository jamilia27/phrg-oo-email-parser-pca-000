# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser
  attr_accessor :emails, :parser

  def initialize(emails)
    @emails = emails
  end

  def parse
    email_array = emails.split.map {|email| email.split(",")}
    email_array.flatten.uniq

    # parse returns an array of properly formatted emails
    # email_array equals a string of emails split into an array
    # email_array removed both a space and a comma delimiter from the string of emails
    # email_array removes any duplicate emails
end

end
