require 'HTTParty'
require 'Nokogiri'
require 'JSON'
require 'open-uri'
require 'certified'
require 'mechanize'
require 'csv'
require 'watir'
require 'watir-scroll'

Watir.default_timeout = 300

	CSV.open("columbus_data_file.csv", 'w+') do |csv|
		puts "file created"
	end

year = 2003
case_num = 2806
case_codes = ["CVG", "CVF", "CVI", "CVE", "CVH"]
looper = true
good_case = true
check_text = nil

browser = Watir::Browser.new

while 1 == 1

		case_data = []

		code_num = 0

		browser.goto 'http://www.fcmcclerk.com/case/search'

		browser.text_field(:id, 'case_number').set("#{year} #{case_codes[code_num]} #{case_num}")

		browser.select_list(:id, 'party_code').select "PLAINTIFF"

		browser.button(:id, 'search_button_2').click

		if browser.button(:value, "View").exists?

			# browser.scroll.to :bottom

			browser.button(:value, "View").click

			#PUT DATA COLLECTION BELOW

			date = 0
			plaintiff = 0
			plaintiff1 = 0
			plaintiff2 = 0
			plaintiff3 = 0
			defendant1 = 0
			defendant2 = 0
			defendant3 = 0
			defendant4 = 0
			defendant5 = 0
			judgement_amount = 0
			judgement_float = 0
			payments = 0
			placeholder_string = nil
			check_text = nil

			browser.windows.last.use do 
				
				date = browser.td(:class => "page_header", :index => 1).text
				plaintiff = browser.table(:id => "pty_table").td(:class => "data", :index => 1).text
				plaintiff1 = browser.table(:id => "pty_table").td(:class => "data", :index => 3).text
				plaintiff2 = browser.table(:id => "pty_table").td(:class => "data", :index => 4).text
				plaintiff3 = browser.table(:id => "pty_table").td(:class => "data", :index => 5).text

				defendant1 = browser.table(:id => "pty_table").td(:class => "data", :index => 7).text
				defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 9).text
				defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 10).text
				defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 11).text

				if browser.table(:id => "pty_table").td(:class => "data", :index => 13).exists?

					defendant2 = browser.table(:id => "pty_table").td(:class => "data", :index => 13).text
					defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 15).text
					defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 16).text
					defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 17).text
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 19).exists?
					defendant3 = browser.table(:id => "pty_table").td(:class => "data", :index => 19).text
					defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 21).text
					defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 22).text
					defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 23).text
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 25).exists?
					defendant4 = browser.table(:id => "pty_table").td(:class => "data", :index => 25).text
					defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 27).text
					defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 28).text
					defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 29).text
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 31).exists?
					defendant5 = browser.table(:id => "pty_table").td(:class => "data", :index => 31).text
					defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 33).text
					defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 34).text
					defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 35).text
				end

				if browser.table(:id => "dkt_table").text.include?("SATISFACTION OF JUDGMENT FILED")
					puts "Judgement Satisfied"
					good_case = false
				end

				if browser.table(:id => "dkt_table").text.include?("%")
					puts "% FOUND"

					browser.table(:id => "dkt_table").tds(:class => "data").each do |td|
						if td.text.include?("%")
							placeholder = td.parent.next_sibling
							judgement_amount = placeholder.text
							judgement_amount = judgement_amount.split("$")
							judgement_amount = judgement_amount[1].split(" ")
							judgement_float = judgement_amount[0].to_f
							judgement_amount = "$" + judgement_amount[0]
							break
						end
					end
					# judgement_amount = browser.table(:id => "dkt_table").text.split("%")
				else
					puts "NO MONETARY JUDGEMENT FOUND"
					good_case = false
				end

				if browser.table(:id => "check_table").exists?
					check_text = browser.table(:id => "check_table").text
					check_text = check_text.split(" ")
					check_text.each do |text|
						if text.include?("$")
							placeholder_string = text
							placeholder_string = placeholder_string.delete!("$")
							placeholder_string = placeholder_string.to_f
							payments += placeholder_string
						end
					end
					payments = payments.round(2)					
				end

				if (judgement_float - payments) < 0
					good_case = false
				end
				
			end

			plaintiff_data = plaintiff + " #{plaintiff1}" + " #{plaintiff2}" + " #{plaintiff3}"

			# if judgement_amount != 0
			# 	judgement_amount = judgement_amount.split("$")
			# 	puts judgement_amount
			# 	judgement_amount = judgement_amount[1].split(" ")
			# 	judgement_amount = "$" + judgement_amount[0]
			# 	# puts judgement_amount
			# end

			date = date.split(" ")
			date = date.last

			case_data.push(date)
			case_data.push("#{year} #{case_codes[code_num]} #{case_num}")
			case_data.push(plaintiff_data)
			case_data.push(judgement_float - payments)
			case_data.push(defendant1)

			if defendant2 != 0
				case_data.push(defendant2)
			end

			if defendant3 != 0
				case_data.push(defendant3)
			end

			if defendant4 != 0
				case_data.push(defendant4)
			end 

			if defendant5 != 0
				case_data.push(defendant5)
			end

			if good_case == true
				CSV.open("columbus_data_file.csv", "a") do |csv|
					csv.puts case_data
					puts "Data Saved"
				end
			end

			sleep 1

			# browser.windows.last.close

			puts "Collection Complete for current case"
			# puts judgement_amount
			puts case_data

			sleep 10000000

		end
end

