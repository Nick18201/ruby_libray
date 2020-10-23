LOCALES = {
  en: {
    subject: "Our website is online",
    body: "Come and visit us!",
    closing: "See you soon",
    signature: "The Team"
  },
  fr: {
    subject: "Notre site est en ligne",
    body: "Venez nous rendre visite !",
    closing: "A bientot",
    signature: "L'équipe"
  },
  de: {
    subject: "Unsere Website ist jetzt online",
    body: "Komm und besuche uns!",
    closing: "Bis bald",
    signature: "Das Team"
  }
}

def valid?(email)
  # TODO: return true if the email is valid, false otherwise
  email.match?(/^(?<user_name>[a-z]+)@(?<domain>[a-z]+)\.(?<top_level_domain_name>[a-z]+)$/)
end

def clean_database(emails)
  # TODO: return an array with the valid emails only
  emails.select { |email| email.match?(/^(?<user_name>[a-z]+)@(?<domain>[a-z]+)\.(?<top_level_domain_name>[a-z]+)$/) }
end

p clean_database(['nblumferracci@yahoo.fr', 'lulu@fe.fr', 'sdsdds.fr'])

def group_by_tld(emails)
  # TODO: return a Hash with emails grouped by TLD
  # Method LONG
  # 1 initialise an empty hash
  # hashed_emails = {}
  # iterate all emails we extract tld's
  # If tld is new we create a key, if tld already exist
  # we append the email to the tld key
  # emails.each do |email|
  #   match_data = email.match(/^(?<user_name>[a-z]+)(?<at_symbol>@)(?<sld>[a-z]+)\.(?<tld>[a-z]+)$/)
  #   next if match_data == nil

  #   if hashed_emails.key?(match_data[:tld])
  #     hashed_emails[match_data[:tld]] << email
  #   else
  #     hashed_emails[match_data[:tld]] = [email]
  #   end
  # end
  # hashed_emails
  emails.group_by do |email|
    match_data = email.match(/^(?<user_name>[a-z]+)@(?<domain>[a-z]+)\.(?<tld>[a-z]+)$/)
    match_data[:tld]
  end
end

p group_by_tld(['nblumferracci@yahoo.fr', 'lulu@fe.fr', 'sdsdds@dfdf.fr'])

def compose_mail(email)
  # TODO: return a Hash with username, domain and tld extracted from email
  # compose_email = {}
  match_data = email.match(/^(?<user_name>[a-z]+)@(?<domain>[a-z]+)\.(?<tld>[a-z]+)$/)
  # compose_email[:user_name] = match_data[:user_name]
  # compose_email[:domain] = match_data[:domain]
  # compose_email[:tld] = match_data[:tld]
  # compose_email
  return {
    username: match_data[:user_name],
    domain: match_data[:domain],
    tld: match_data[:tld]
  }
end

p compose_mail("seb@lewagon.fr")


def compose_translated_email(email)
  # TODO: return a Hash with username, domain and tld extracted from email
  # TODO: translate subject, body, closing and signature, according to TLD
  # We want to check the mail to see what is the tld, username and domain, so we can use compose_email!
  # case 1 : tld(fr) == fr
  # case 2 : tld(de) == de
  # case 3 : tld(com) == en
  decomposed_email = compose_mail(email)
  # Iteration 1
  # if decomposed_email[:tld] == "fr"
  #   # {
  #   #   username: decomposed_email[:username] ,
  #   #   domain: ,
  #   #   tld: ,
  #   #   subject: LOCALES[:fr][:subject] ,
  #   #   body: ,
  #   #   closing: ,
  #   #   signature:
  #   # }

  # Iteration 2 to MATSERIZE
  #   decomposed_email.merge(LOCALES[:fr])
  # elsif decomposed_email[:tld] == "de"
  #   decomposed_email.merge(LOCALES[:de])
  # else
  #   decomposed_email.merge(LOCALES[:en])
  # end

  # Iteration 3
  # if LOCALES.key?(decomposed_email[:tld].to_sym)
  #   decomposed_email.merge(LOCALES[decomposed_email[:tld].to_sym])
  # else
  #   decomposed_email.merge(LOCALES[:en])
  # end

  # Iteration 4
  language = LOCALES.key?(decomposed_email[:tld].to_sym) ? decomposed_email[:tld].to_sym : :en

  decomposed_email.merge(LOCALES[language])
end

p compose_translated_email('seb@lewagon.nl')
